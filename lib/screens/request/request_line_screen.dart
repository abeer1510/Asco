import 'package:asco/items/botton.dart';
import 'package:asco/items/show_done.dart';
import 'package:asco/screens/home/home_screen.dart';
import 'package:asco/screens/request/text_item.dart';
import 'package:flutter/material.dart';

class RequestLine extends StatelessWidget {
  static const String routeName = "RequestLine";

  const RequestLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/background2.png"),
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, HomeScreen.routName);
                          },
                          child: Image(
                            image: AssetImage("assets/images/back.png"), width: 20, height: 20, fit: BoxFit.fill,
                          )),
                      Text(
                        "Request Line", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500, fontSize: 24),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Make your appointment for tomorrow",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700, fontSize: 17),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    text_item(context, "Time"),
                    SizedBox(width: 10,),
                    text_item(context, "Date"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffEDECEC),),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                "9:00 Am", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xB3000000)),
                              ),
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    buildTextItem(context, "24 Nov 2024")
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                text(context, "From", Color(0xBA000000), "To", FontWeight.w500),
                text(context, "Cairo", Color(0xff000000), "Menof", FontWeight.w600),
                Image(image: AssetImage("assets/images/car.png")),
                SizedBox(height: 10),
                Text(
                  "Duration 1h 15m",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500, fontSize: 16,
                      ),
                ),
                Spacer(),
                Botton(
                  tittle: "Request",
                  onclick: () {
                    showDone(
                        context,
                        "Your request is being processed. Please\n wait for confirmation notification.",
                        "accept");
                  },
                ),
                Spacer()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
