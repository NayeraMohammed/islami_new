import 'package:flutter/material.dart';
import 'package:islami/homeScreen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),

      body: SettingTab(), // 👈 هنا بنعرض صفحة الـ settings
    );
  }
}