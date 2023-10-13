import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/theme_data.dart';

import 'ahadeth_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) =>  const Home(),
        SuraDetails.routeName:(context) => const SuraDetails(),
        AhadethDetails.routeName:(context) => const AhadethDetails(),

      },
    );
  }
}
