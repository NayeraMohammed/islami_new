import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app_config.dart';
import '../My_Theme_data.dart';

class SettingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appConfig = Provider.of<AppConfig>(context);

    return Container(
      width: double.infinity,
      height: double.infinity,

      // ✅ حل مشكلة الشاشة السودة
      color: Theme.of(context).scaffoldBackgroundColor,

      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 🌍 Language
              Text(
                "Language",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: MyThemeData.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButton<String>(
                  value: appConfig.locale.languageCode,
                  isExpanded: true,
                  underline: const SizedBox(),

                  // ✅ يخلي القايمة واضحة
                  dropdownColor: MyThemeData.primary,
                  style: const TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.white,

                  items: const [
                    DropdownMenuItem(
                      value: 'en',
                      child: Text("English"),
                    ),
                    DropdownMenuItem(
                      value: 'ar',
                      child: Text("العربية"),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      appConfig.changeLanguage(value);
                    }
                  },
                ),
              ),

              const SizedBox(height: 30),

              /// 🎨 Theme
              Text(
                "Theme",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: MyThemeData.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButton<ThemeMode>(
                  value: appConfig.themeMode,
                  isExpanded: true,
                  underline: const SizedBox(),

                  dropdownColor: MyThemeData.primary,
                  style: const TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.white,

                  items: const [
                    DropdownMenuItem(
                      value: ThemeMode.light,
                      child: Text("Light"),
                    ),
                    DropdownMenuItem(
                      value: ThemeMode.dark,
                      child: Text("Dark"),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      appConfig.changeTheme(value);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}