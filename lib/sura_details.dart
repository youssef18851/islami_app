import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';
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
    var provider = Provider.of<MyProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                provider.themeCode == ThemeMode.light?
                'assets/images/background.png'
                :'assets/images/dark_bg.png'
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.secondary,
              size: 30),
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(
            elevation: 10,
            color: Theme.of(context).colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(separatorBuilder: (context, index) => Divider(
                color: Theme.of(context).dividerColor,
                thickness: 1,
                endIndent: 40,
                indent: 40,
              ),
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                        color: MyThemeData.primaryColor,
                        thickness: 1,
                        indent: 40,
                        endIndent: 40,
                      ),
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                        '${verses[index]}(${index + 1})',
                        textDirection: TextDirection.rtl,
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
