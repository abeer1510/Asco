import 'package:flutter/material.dart';

class LanguageItem extends StatelessWidget {
  String title;
  String subtitle;
  final bool isSelected;
  final VoidCallback onSelected;
   LanguageItem({super.key,required this.title,required this.subtitle,required this.isSelected,required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: Theme.of(context).textTheme.titleSmall!.
      copyWith(color: Color(0xff191919),fontWeight: FontWeight.w400 ,fontSize: 15),),
      subtitle: Text(title,style: Theme.of(context).textTheme.titleSmall!.
      copyWith(color: Color(0x9e000000),fontWeight: FontWeight.w400 ,fontSize: 15),),
      trailing: Checkbox(value: isSelected, onChanged: (bool?value){
        onSelected();
      }, activeColor: const Color(0xffBC1E1E)),
    );
  }
}
