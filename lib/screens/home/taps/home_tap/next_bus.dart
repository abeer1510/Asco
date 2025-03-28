import 'dart:async';
import 'package:flutter/material.dart';

class NextBus extends StatefulWidget {
  @override
  _NextBusState createState() => _NextBusState();
}

class _NextBusState extends State<NextBus> {
  Duration remainingTime = Duration(hours: 12, minutes: 25, seconds: 5);

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (remainingTime.inSeconds > 0) {
            remainingTime -= Duration(seconds: 1);
          } else {
            timer.cancel();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String hours = remainingTime.inHours.toString().padLeft(2, '0');
    String minutes = (remainingTime.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (remainingTime.inSeconds % 60).toString().padLeft(2, '0');

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Card(
          color: Color(0xffffffff),
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          shadowColor: Color(0x40000000),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Count Down for Next Bus",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 20),
                ),
                SizedBox(height: 30),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildTimeBox(hours, "HOURS"),
                    SizedBox(width: 10),
                    _buildTimeBox(minutes, "MINUTES"),
                    SizedBox(width: 10),
                    _buildTimeBox(seconds, "SECONDS"),
                  ],
                ),
      
                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cairo",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Color(0xff8E8888))),
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
        ),
      ),
    );
  }

  Widget _buildTimeBox(String value, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
          ),
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20),
          ),
        ),
        SizedBox(height: 4),
        Text(label, style:Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}

