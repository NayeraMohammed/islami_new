import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:islami/My_Theme_data.dart';
import '../app_config.dart';

class RadioTabs extends StatelessWidget {
  static const String routeName = "radio";
  const RadioTabs({super.key});

  @override
  Widget build(BuildContext context) {
    var appConfig = Provider.of<AppConfig>(context);

    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 80),
          child: Image.asset("assets/images/radio_image.png"),
        ),
        Text(
          appConfig.locale.languageCode == 'ar'
              ? "اذاعة القران الكريم"
              : "Quran Radio",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(height: 50),
        Row(
          children: [
            Expanded(
              child: Icon(Icons.skip_previous, color: MyThemeData.primary),
            ),
            Expanded(
              child: Icon(Icons.play_arrow, color: MyThemeData.primary),
            ),
            Expanded(
              child: Icon(Icons.skip_next, color: MyThemeData.primary),
            ),
          ],
        ),
      ],
    );
  }
}