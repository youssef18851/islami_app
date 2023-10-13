import 'package:flutter/material.dart';
import 'package:islami_app/tabs/ahadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/setting_tab.dart';
import 'package:islami_app/theme_data.dart';

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
            'أسلامي',
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
              label: 'قرأن',
              backgroundColor: MyThemeData.primaryColor,
            ),
            BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'سبحة',
                backgroundColor: MyThemeData.primaryColor),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage('assets/images/ahadeth.png')),
              label: 'احاديث',
              backgroundColor: MyThemeData.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage('assets/images/radio.png')),
              label: 'راديو',
              backgroundColor: MyThemeData.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: 'الاعدادات',
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
    AhadethTab(),
    const RadioTab(),
    const SettingTab()
  ];
}
