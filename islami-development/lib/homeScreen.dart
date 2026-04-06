import 'package:flutter/material.dart';
import 'package:islami/My_Theme_data.dart';
import 'package:islami/tabs/ahadeth.dart';
import 'package:islami/tabs/quran.dart';
import 'package:islami/tabs/radio.dart';
import 'package:islami/tabs/sebha.dart';
import 'package:islami/tabs/setting.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List<Widget> tabs = [
    SettingTab(),
    RadioTabs(),
    SebhaTabs(),
    AhadethTabs(),
    QuranTabs(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// 🔥 الخلفية
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),

        /// 🔥 التطبيق
        Scaffold(
          backgroundColor: Colors.transparent, // 👈 مهم جدًا

          appBar: AppBar(
            backgroundColor: Colors.transparent, // 👈 مهم
            elevation: 0,
            centerTitle: true,
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: MyThemeData.primary,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,

            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Setting",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/radio.png"),
                ),
                label: "Radio",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/sebha.png"),
                ),
                label: "Sebha",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/ahadeth.png"),
                ),
                label: "Ahadeth",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/quran.png"),
                ),
                label: "Quran",
              ),
            ],
          ),

          /// 🔥 المحتوى
          body: SafeArea(
            child: tabs[index],
          ),
        ),
      ],
    );
  }
}