import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homeScreen.dart';

import 'app_config.dart';
import 'My_Theme_data.dart';
import 'sura_details.dart';
import 'tabs/ahadeth_details.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppConfig(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var appConfig = Provider.of<AppConfig>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      ///  اللغة
      locale: appConfig.locale,

      ///  الثيم
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: appConfig.themeMode,

      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        AhadethDetails.routeName: (context) => AhadethDetails(),
      },
    );
  }
}