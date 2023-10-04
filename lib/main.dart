import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/theme_data.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) =>  const Home(),
        SuraDetails.routeName:(context) => const SuraDetails(),

      },
    );
  }
}
