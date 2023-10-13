import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ahadeth_model.dart';
import 'package:islami_app/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../ahadeth_details.dart';

class AhadethTab extends StatefulWidget {
  const AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty){
      loadAhadeth();
    }
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              'assets/images/ahadeth_image.png',
            ),
          ),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),
          Column(
            children: [
              Text(
                AppLocalizations.of(context)!.ahadeth,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: MyThemeData.secondColor),
              ),
            ],
          ),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AhadethDetails.routeName,
                    arguments: allAhadeth[index]);
                  },
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                            allAhadeth[index].title,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: MyThemeData.secondColor
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                );
              },
              itemCount: allAhadeth.length,
              controller: ScrollController(
                keepScrollOffset: false,
              ),
            ),
          )
        ],
      ),
    );
  }

  void loadAhadeth() async {
    String ahadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethLines = ahadeth.split('#');
    for (int i = 0; i < hadethLines.length; i++) {
      String hadethOne = hadethLines[i];
      List<String> hadethOneLine = hadethOne.trim().split('\n');
      String title = hadethOneLine[0];
      setState(() {});
      hadethOneLine.removeAt(0);
      List<String> content = hadethOneLine;
      HadethModel hadethModel = HadethModel(title, content);
      debugPrint(hadethModel.title.toString());
      allAhadeth.add(hadethModel);
    }
  }
}
