import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../providers/my_provider.dart';

class LanguageBottom extends StatelessWidget {
  const LanguageBottom({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height * .59,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage('en');
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.mainLanguage,
                  ),
                  const Spacer(),
                  provider.languageCode == 'en'
                      ? Icon(
                          Icons.check_circle,
                          size: 30,
                          color: Theme.of(context).colorScheme.onSecondary,
                        )
                      : const SizedBox.shrink(),
                ],
              )),
          InkWell(
              onTap: () {
                provider.changeLanguage('ar');
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.secondLanguage,
                  ),
                  const Spacer(),
                  provider.languageCode == 'en'
                      ? const SizedBox.shrink()
                      : Icon(
                          Icons.check_circle,
                          size: 30,
                          color: Theme.of(context).colorScheme.onSecondary,
                        )
                ],
              )),
        ],
      ),
    );
  }
}
