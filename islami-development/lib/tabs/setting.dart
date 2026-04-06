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
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Language",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: MyThemeData.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: DropdownButton<String>(
                value: appConfig.locale.languageCode,
                isExpanded: true,
                underline: SizedBox(),
                dropdownColor: MyThemeData.primary,
                items: [
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
                  appConfig.changeLanguage(value!);
                },
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Theme",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: MyThemeData.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: DropdownButton<ThemeMode>(
                value: appConfig.themeMode,
                isExpanded: true,
                underline: SizedBox(),
                dropdownColor: MyThemeData.primary,
                items: [
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
                  appConfig.changeTheme(value!);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}