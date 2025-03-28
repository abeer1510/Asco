import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationListtile extends StatelessWidget {
  String title;
  String subtitle;
  String image;

  NotificationListtile({super.key,required this.image,required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: AssetImage("assets/images/$image.png")),
        SizedBox(width: 16,),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: Theme.of(context).textTheme.titleSmall!.
            copyWith(color: Color(0xff101010),fontWeight: FontWeight.w600 ,fontSize: 16),),

            Text(subtitle,style: GoogleFonts.inder(
                fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff878787)
            ))
          ],)
      ],
    );
  }
}
