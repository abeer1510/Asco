import 'package:asco/items/screens_title.dart';
import 'package:flutter/material.dart';

class TripsTap extends StatelessWidget {

  const TripsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ScreensTitle(title: "Trips"),
        ),
        Spacer(),
        Center(child: Image(image: AssetImage("assets/images/coming_soon.png"))),
        Spacer(),
      
      ],
    );
  }
}
