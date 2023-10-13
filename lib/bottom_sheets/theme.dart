import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../providers/my_provider.dart';

class ThemeBottom extends StatelessWidget {
  const ThemeBottom({super.key});
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
              provider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.firstTheme),
                provider.themeCode == ThemeMode.light
                    ? Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Theme.of(context).colorScheme.onSecondary,
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.secondTheme),
                provider.themeCode == ThemeMode.light
                    ? const SizedBox.shrink()
                    : Icon(
                        Icons.check_circle,
                        size: 30,
                  color: Theme.of(context).colorScheme.onSecondary,
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
