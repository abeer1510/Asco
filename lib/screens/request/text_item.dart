import 'package:flutter/material.dart';

Widget text_item(context,String title){
  return  Expanded(
    child: Container(
      child: Text(title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 16,color: Color(
            0xBA000000)),),
    ),
  );

}


Widget buildTextItem(context,String title){
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffEDECEC),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 16,color: Color(
              0xB3000000),),textAlign: TextAlign.center,),
      ),
    ),
  );

}

Widget text(context,String title1,Color color,String title2,FontWeight weight){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title1,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: weight,
            fontSize: 16,
            color: color),
      ),
      Text(
        title2,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: weight,
            fontSize: 16,
            color: color),
      )
    ],
  );
}