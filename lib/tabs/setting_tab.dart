import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/theme_data.dart';
class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.w500
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: MyThemeData.primaryColor
              )
            ),
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'English',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const Icon(Icons.arrow_downward)
                ],
              ),

            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.w500
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                    color: MyThemeData.primaryColor
                )
            ),
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'English',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  const Icon(Icons.arrow_downward)
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
