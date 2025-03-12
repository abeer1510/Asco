import 'package:asco/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = "OnBoardingScreen";

  OnBoardingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var bodyStyle = GoogleFonts.roboto(
      fontSize: 16.0,
      color: Color(0xff000000),
      fontWeight: FontWeight.w700,
    );
    var pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 27.0,
          fontWeight: FontWeight.w700,
          color: Color(0xff000000)),
      bodyTextStyle: bodyStyle,
      imagePadding: EdgeInsets.zero,
      imageFlex: 2,
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: IntroductionScreen(
            globalBackgroundColor: Colors.transparent,
            showDoneButton: true,
            showSkipButton: true,
            skip:Text("Skip",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            onSkip: () {
              Navigator.pushReplacementNamed(context, LoginScreen.routeName);
            },
            done: Image(image: AssetImage("assets/images/next_2.png"),),
            onDone: () {
              Navigator.pushReplacementNamed(context, LoginScreen.routeName);
            },
            dotsFlex: 2,
            showBackButton: true,
            back:GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, LoginScreen.routeName);
              },
              child: Text("Skip",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            dotsDecorator: DotsDecorator(
              size: const Size(8.0, 8.0),
              activeSize: const Size(20.0, 8.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Color(0xffACB8CB),
              activeColor: Color(0xff000000),

            ),
            showNextButton: true,
            next: Image(image: AssetImage("assets/images/next_1.png")),
            pages: [
              PageViewModel(
                titleWidget: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      "Your Journey of Exploration Begins Here",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                bodyWidget: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      "Choose the suitable package and enjoy a good trip with our bus.",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                image: _buildImage('buss1.png'),
                decoration: pageDecoration,
                useScrollView: false,
              ),
              PageViewModel(
                  titleWidget: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        "A safe and convenient service for all Students",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  bodyWidget: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        "Don't worry about the problems and dangers of traveling for yourself because we want comfort and convenience for you",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  image: _buildImage('buss2.png'),
                  decoration: pageDecoration,
                  useScrollView: false),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildImage(String assetName, ) {
    return Image.asset(
      'assets/images/$assetName',
      width: double.infinity,

    );
  }
}