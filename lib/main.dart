import 'package:flutter/material.dart';
import 'package:islamyproject/Hadith/hadithdetailsscreen.dart';
import 'package:islamyproject/HomeScreen.dart';
import 'package:islamyproject/MyThemdata.dart';
import 'package:islamyproject/Quran/sura_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.RouteName,
      darkTheme: MyThemdata.darkthem,
      themeMode: ThemeMode.dark,
      routes: {
        HomeScreen.RouteName:(context)=>HomeScreen(),
        hadithDetailsScreen.RouteName:(context)=>hadithDetailsScreen(),
        sura_details_screen.RouteName:(context)=>sura_details_screen(),
      },
    );
  }
}
