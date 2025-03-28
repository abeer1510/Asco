import 'package:flutter/material.dart';

class List123 extends StatelessWidget {
  const List123({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, items) => SizedBox(height: 10,
        ),
        // key: ValueKey(items),
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            color: Color(0xffffffff),
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            shadowColor: Color(0x40000000),
            child: Padding(
              padding: const EdgeInsets.only(top:40,right: 16,left: 16,bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cairo",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(0xff8E8888),)),
                      Text("Menof", style:  Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(0xff8E8888)),),
                    ],
                  ),
                  Image(image: AssetImage("assets/images/car1.png")),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("08:00 AM",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 18)),
                      Image(image: AssetImage("assets/images/line.png")),
      
                      Text("09:15 AM",
                           style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("24 Nov 2024",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(0xff8E8888))),
      
                      Text("24 Nov 2024",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(0xff8E8888))),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("Duration 1h 15m",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(0xff8E8888))),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
