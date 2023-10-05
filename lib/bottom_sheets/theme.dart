import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../theme_data.dart';

class ThemeBottom extends StatelessWidget {
  ThemeBottom({super.key});
  bool isEnglish = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .59,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.firstTheme),
              isEnglish == true
                  ? Icon(
                      Icons.check_circle,
                      size: 30,
                      color: MyThemeData.primaryColor,
                    )
                  : const SizedBox.shrink()
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.secondTheme),
              isEnglish == true
                  ? const SizedBox.shrink()
                  : Icon(
                      Icons.check_circle,
                      size: 30,
                      color: MyThemeData.secondColor,
                    )
            ],
          )
        ],
      ),
    );
  }
}
