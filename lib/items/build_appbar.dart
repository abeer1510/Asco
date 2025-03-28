import 'package:flutter/material.dart';

AppBar buildAppbar(context){
  return AppBar(
    backgroundColor: Colors.white,
    actions: [Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Icon(Icons.notifications,color: Colors.black,),
    )],);
}

