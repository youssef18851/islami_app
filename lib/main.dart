import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyProvider(),
      child:  const MyApp()
  ));
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(pro.languageCode),
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
