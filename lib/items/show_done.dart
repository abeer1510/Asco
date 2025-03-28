import 'package:asco/items/botton.dart';
import 'package:asco/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void showDone(BuildContext context,String text,String image) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 23,horizontal: 2),
              child: Text(
                text,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w700),),
            ),
            Image(image: AssetImage("assets/images/$image.png")),
            // SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right:  20,left: 20,bottom: 20),
              child: Botton(tittle: "Done",onclick: (){
                Navigator.pushReplacementNamed(context, HomeScreen.routName);
              },),
            ),
          ],
        ),
      );
    },
  );
}