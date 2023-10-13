import 'package:flutter/material.dart';
import 'package:islami_app/ahadeth_model.dart';
import 'package:islami_app/theme_data.dart';

class AhadethDetails extends StatelessWidget {
  const AhadethDetails({super.key});
  static const String routeName = 'AhadethDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
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
            args.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(14),
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                        '${args.content[index]}(${index + 1})',
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                  itemCount: args.content.length),
            ),
          ),
        ),
      ),
    );
  }
}
