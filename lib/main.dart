import 'package:asco/screens/call_us_screen.dart';
import 'package:asco/screens/home/home_screen.dart';
import 'package:asco/screens/home/taps/my_package/my_package.dart';
import 'package:asco/screens/home/taps/trips_tap.dart';
import 'package:asco/screens/language/language_screen.dart';
import 'package:asco/screens/login/login_screen.dart';
import 'package:asco/screens/main_screen.dart';
import 'package:asco/screens/notification/notification_screen.dart';
import 'package:asco/screens/onboarding_screen.dart';
import 'package:asco/screens/payment/payment_screen.dart';
import 'package:asco/screens/privacy/privacy_screen.dart';
import 'package:asco/screens/register_screen/register_screen.dart';
import 'package:asco/screens/request/request_line_screen.dart';
import 'package:asco/screens/splash_screen.dart';
import 'package:asco/screens/subcribe/subscribe_screen.dart';
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
        PaymentScreen.routeName:(context)=>PaymentScreen(paymentMethod: '',),

      },
    );
  }
}
