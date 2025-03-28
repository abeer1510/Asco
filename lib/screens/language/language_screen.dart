import 'package:asco/items/botton.dart';
import 'package:asco/items/screens_title.dart';
import 'package:asco/screens/home/home_screen.dart';
import 'package:asco/screens/language/language_item.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  static const String routeName = "Language";

  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String? selectedLanguage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                ScreensTitle(title: "Language"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Image(
                      image: AssetImage("assets/images/language_item.png")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "IPHONE LANGUAGES",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Color(0xff1A1A1A),
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ],
                ),
                LanguageItem(
                  title: "English (Us)",
                  subtitle: "English (Us)",
                  isSelected: selectedLanguage == "English (US)",
                  onSelected: () {
                    setState(() {
                      selectedLanguage = "English (US)";
                    });
                  },
                ),
                LanguageItem(
                  title: "Arabic (Egypt)",
                  subtitle: "Arabic (Egypt)",
                  onSelected: () {
                    setState(() {
                      selectedLanguage = "Arabic (Egypt)";
                    });
                  },
                  isSelected: selectedLanguage == "Arabic (Egypt)",
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 100,
                    right: 16,
                    left: 16,
                  ),
                  child: Botton(
                      tittle: "Done",
                      onclick: () {
                        Navigator.pushReplacementNamed(
                            context, HomeScreen.routName);
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
