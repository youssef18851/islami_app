import 'package:flutter/material.dart';
import 'package:islami_app/tabs/ahadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/setting_tab.dart';
import 'package:islami_app/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Home extends StatefulWidget {
  static const String routeName = 'Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/background.png',
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.appTitle,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage('assets/images/quran.png')),
              label: AppLocalizations.of(context)!.quran,
              backgroundColor: MyThemeData.primaryColor,
            ),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/sebha.png')),
                label: AppLocalizations.of(context)!.sebha,
                backgroundColor: MyThemeData.primaryColor),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage('assets/images/ahadeth.png')),
              label: AppLocalizations.of(context)!.ahadeth,
              backgroundColor: MyThemeData.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage('assets/images/radio.png')),
              label: AppLocalizations.of(context)!.radio,
              backgroundColor: MyThemeData.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: AppLocalizations.of(context)!.settings,
              backgroundColor: MyThemeData.primaryColor,
            ),
          ],
        ),
        body: tabs[index],
      ),
    ]);
  }

  List<Widget> tabs = [
    const QuranTab(),
    const SebhaTab(),
    const AhadethTab(),
    const RadioTab(),
    const SettingTab()
  ];
}
