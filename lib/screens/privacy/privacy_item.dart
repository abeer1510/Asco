import 'package:flutter/material.dart';

class PrivacyItem extends StatelessWidget {
  String title;
  String description;
   PrivacyItem({super.key,required this.title,required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: ExpansionTile(
          title: Text(title,style: Theme.of(context).textTheme.titleSmall!.
      copyWith(color: Color(0xff1A1A1A),fontWeight: FontWeight.w400 ,fontSize: 15),),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(description,style: Theme.of(context).textTheme.titleSmall!.
          copyWith(color: Color(0xff808080),fontWeight: FontWeight.w400 ,fontSize: 12),),
        )
      ],
        shape: Border.all(color: Colors.transparent),
        collapsedShape: Border.all(color: Colors.transparent),),
    );
  }
}
