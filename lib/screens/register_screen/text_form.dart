import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  String label;
  String surface;
  TextEditingController controller;
  final TextInputType keyboardType;
  TextForm({super.key,required this.label,required this.controller,this.keyboardType = TextInputType.text,required this.surface});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text(label,style:  Theme.of(context).textTheme.titleMedium!.copyWith(color: Color(0xff2F2E41),fontSize: 14)),

      TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(0x85000000)),
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(surface,style: TextStyle(fontSize: 30,color: Color(
                0x80000000)),),
          ),

          filled: true,
          fillColor: Color(0xffF7F8F9),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1, color: Color(0xff376E80)),
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1, color: Color(0xff376E80)),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1, color: Color(0xff376E80)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      const SizedBox(height: 10,),
    ],);
  }
}
