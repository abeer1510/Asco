import 'package:asco/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = "MainScreen";
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool firstImage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text(
              "We apologize, the application \nis under maintenance.",
              style:Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 26,fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80,),

            Image(
                image: firstImage
                    ? AssetImage("assets/images/main_2.png")
                    : AssetImage("assets/images/main_1.png")),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 50),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: onBottonClick,
                      child: Text("Done",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(0xffffffff)),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffBC1E1E),
                        padding: EdgeInsets.symmetric( vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),),),),],),),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image(image: AssetImage("assets/images/masar.png")),
            ),
          ],
        ),
      ),
    );
  }

  void onBottonClick() {
    if (firstImage) {
      setState(() {
        firstImage = false;
      });
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SplashScreen()),
      );
    }
  }
}
