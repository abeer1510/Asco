import 'package:asco/screens/call_us.dart';
import 'package:asco/screens/home_screen.dart';
import 'package:asco/screens/language.dart';
import 'package:asco/screens/login_screen.dart';
import 'package:asco/screens/main_screen.dart';
import 'package:asco/screens/notification.dart';
import 'package:asco/screens/onboarding.dart';
import 'package:asco/screens/privacy.dart';
import 'package:asco/screens/register_screen.dart';
import 'package:asco/screens/request_line.dart';
import 'package:asco/screens/splash_screen.dart';
import 'package:asco/screens/subscribe_screen.dart';
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
        OnBoardingScreen.routeName:(context)=>OnBoardingScreen(),
        LoginScreen.routeName:(context)=>LoginScreen(),
        RegisterScreen.routeName:(context)=>RegisterScreen(),
        HomeScreen.routName:(context)=>HomeScreen(),
        CallUs.routeName:(context)=>CallUs(),
        RequestLine.routeName:(context)=>RequestLine(),
        Privacy.routeName:(context)=>Privacy(),
        Language.routeName:(context)=>Language(),
        Notifications.routeName:(context)=>Notifications(),
        SubscribeScreen.routeName:(context)=>SubscribeScreen(),
      },
    );
  }
}
