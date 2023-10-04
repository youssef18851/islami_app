import 'package:flutter/material.dart';
import 'package:islami_app/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}
