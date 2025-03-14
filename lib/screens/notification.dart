import 'package:asco/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  static const String routeName="Notifications";

  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage("assets/images/background2.png"),fit: BoxFit.fill,width: double.infinity,),
      
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, HomeScreen.routName);
                          },
                          child: Image(image: AssetImage("assets/images/back.png"),width: 20,height: 20,fit:BoxFit.fill,)),
      
                      Text("Notification",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 24),),
                      SizedBox(width: 10,)],
                  ),
                ),
      
              ],
            ),
          ),
        ],
      ),
    );
  }
}
