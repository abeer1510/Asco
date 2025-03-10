import 'package:asco/screens/main_screen.dart';
import 'package:asco/screens/onboarding.dart';
import 'package:asco/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MainScreen.routeName,
      routes: {
        MainScreen.routeName:(context)=>MainScreen(),
        SplashScreen.routeName:(context)=>SplashScreen(),
        Onboarding.routeName:(context)=>Onboarding(),
      },
    );
  }
}
