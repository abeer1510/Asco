import 'package:asco/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class ScreensTitle extends StatelessWidget {
  String title;
   ScreensTitle({super.key,required this.title,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: (){Navigator.pushReplacementNamed(context, HomeScreen.routName);},
              child: Image(image: AssetImage("assets/images/back.png"),width: 20,height: 20,fit:BoxFit.fill,)),

          Text(title,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 24),),
          SizedBox(width: 10,)],
      ),
    );
  }
}
