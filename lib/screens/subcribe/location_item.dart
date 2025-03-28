import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationItem extends StatelessWidget {
  String label;
  String value;
   LocationItem({super.key,required this.label,required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 15,color: Color(0xCC000000))),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: Text(value,
              style: GoogleFonts.inder(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xCC000000))),
        ),
      ],
    );

  }
}
