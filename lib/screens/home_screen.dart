import 'package:asco/items/app_drawer.dart';
import 'package:asco/items/botton.dart';
import 'package:asco/screens/subscribe_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routName="HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.notifications,color: Colors.black,),
      )],),
      drawer: AppDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffffffff),
          items: [
            BottomNavigationBarItem(icon: Image(image: AssetImage("assets/images/pakage.png"),),label: "My Package",),
            BottomNavigationBarItem(icon: Image(image: AssetImage("assets/images/trips.png"),),label: "Trips")
          ]),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome , Mai",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700),),
          ],
        ),
        Spacer(),
        Image(image: AssetImage("assets/images/buss1.png")),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 70),
          child: Botton(tittle: "Subscribe",onclick: (){
            Navigator.pushReplacementNamed(context, SubscribeScreen.routeName);
          },),),
      ],),
    );
  }
}
