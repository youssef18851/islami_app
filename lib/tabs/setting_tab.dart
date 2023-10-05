import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/bottom_sheets/language.dart';
import 'package:islami_app/bottom_sheets/theme.dart';
import 'package:islami_app/theme_data.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: MyThemeData.primaryColor)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.mainLanguage,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                      onTap: () {
                        showBottomSheet();
                      },
                      child: const Icon(Icons.arrow_downward))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.themeMode,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: MyThemeData.primaryColor)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.firstTheme,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                      onTap: () {
                        bottomSheet();
                      },
                      child: const Icon(Icons.arrow_downward))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  showBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      builder: (context) => LanguageBottom(),
    );
  }
  bottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      builder: (context) => ThemeBottom(),
    );
  }
}
