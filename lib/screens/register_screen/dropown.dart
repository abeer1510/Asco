import 'package:flutter/material.dart';
class DropDown extends StatelessWidget {

  String label;
  List<String> items;
  String? selectedItem;
  Function(String?) onChanged;

   DropDown({super.key,required this.label,required this.items,required this.onChanged,required this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style:  Theme.of(context).textTheme.titleMedium,),
        DropdownButtonFormField(value:selectedItem,items: items.map((item) {
          return DropdownMenuItem(value: item, child: Text(item));
        }).toList(), onChanged: onChanged,style:  Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(
            0x85000000)),
          decoration: InputDecoration(

            filled: true,
            fillColor: Color(0xffF7F8F9),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: Color(0xff666666)),
              borderRadius: BorderRadius.circular(16),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: Color(0xff666666)),
              borderRadius: BorderRadius.circular(16),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: Color(0xff666666)),
              borderRadius: BorderRadius.circular(16),
            ),
          ),),
        const SizedBox(height: 10,),
      ],
    );

  }
}
