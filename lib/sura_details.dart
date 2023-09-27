import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/theme_data.dart';
import 'sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'SuraDetails';

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadFile(args.index);
    }
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: MyThemeData.secondColor, size: 30),
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(14),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Center(
                        child: Text(verses[index],
                            style: Theme.of(context).textTheme.bodySmall,
                          textAlign: TextAlign.center,
                        ),
                        );
                  },
                  itemCount: verses.length),
            ),
          ),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String files = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = files.split('\n');
    debugPrint(lines.toString());
    verses = lines;
    setState(() {});
  }
}
