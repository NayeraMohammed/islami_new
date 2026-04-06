import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/My_Theme_data.dart';
import 'package:islami/homeScreen.dart';
import 'package:islami/sura_details.dart';
import 'package:islami/tabs/ahadeth.dart';
import 'package:islami/tabs/ahadeth_details.dart';
import 'package:islami/tabs/quran.dart';
import 'package:islami/tabs/radio.dart';
import 'package:islami/tabs/sebha.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),

        AhadethDetails.routeName:(context) => AhadethDetails(),

      },
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
