import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
   Botton({super.key,required this.tittle,required this.onclick});
  String tittle;
  final VoidCallback onclick;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(onPressed: onclick,
            child: Text(tittle,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(0xffffffff)),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffBC1E1E),
              padding: EdgeInsets.symmetric( vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),),),],);
  }
}
