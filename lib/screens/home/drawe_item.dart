import 'package:asco/screens/call_us_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraweItem extends StatelessWidget {
  String image;
  String text;
  final VoidCallback onTap;
  DraweItem({super.key,required this.text,required this.image,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image(image: AssetImage("assets/images/$image.png"),),
            SizedBox(width: 24,),
            InkWell(
              onTap: onTap,
              child: Text(text,style: Theme.of(context).textTheme.titleSmall!.
              copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: Color(
                  0x80000000)),),
            )
          ],),
        SizedBox(height: 16,),
      ],
    );
  }
}
