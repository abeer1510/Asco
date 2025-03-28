import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  String image;
  String gender;
  final Function(String) onSelect;
  final String? selectedGender;



  Gender({super.key,required this.image,required this.gender,required this.onSelect,required this.selectedGender});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    bool isSelected = widget.selectedGender == widget.gender;
    return  GestureDetector(
      onTap: () {
        widget.onSelect(widget.gender);
      },
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image(image: AssetImage("assets/images/${widget.image}.png")),
              Icon(
                isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                color: isSelected ? Color(0xffBC1E1E) : Colors.grey,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(widget.gender, style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(
                0xBA000000))),
          ),

        ],
      ),
    );
  }
}

