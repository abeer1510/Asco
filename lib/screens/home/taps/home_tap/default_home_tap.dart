import 'package:asco/items/botton.dart';
import 'package:asco/items/build_appbar.dart';
import 'package:asco/screens/home/app_drawer.dart';
import 'package:asco/screens/subcribe/subscribe_screen.dart';
import 'package:flutter/material.dart';

class DefaultHomeTap extends StatelessWidget {
  const DefaultHomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppbar(context),
      drawer: AppDrawer(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome , Mai",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Spacer(),
          Image(image: AssetImage("assets/images/buss1.png")),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 70),
            child: Botton(
              tittle: "Subscribe",
              onclick: () {
                Navigator.pushReplacementNamed(
                    context, SubscribeScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
