import 'package:asco/items/botton.dart';
import 'package:asco/items/screens_title.dart';
import 'package:asco/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class BusPackagesScreen extends StatefulWidget {
  @override
  _BusPackagesScreenState createState() => _BusPackagesScreenState();
}

class _BusPackagesScreenState extends State<BusPackagesScreen> {
  int selectedPackage = 0;

  List<BusPackage> packages = [
    BusPackage(
      id: 0,
      image: "assets/images/buss1.png",
      hours: 3,
      minutes: 150,
      seconds: 5,
      price: 500,
      isActive: true,
    ),
    BusPackage(
      id: 1,
      image: "assets/images/buss1.png",
      hours: 12,
      minutes: 25,
      seconds: 4,
      price: 500,
      isActive: false,
    ),
    BusPackage(
      id: 2,
      image: "assets/images/buss1.png",
      hours: 12,
      minutes: 25,
      seconds: 4,
      price: 500,
      isActive: false,
    ),
  ];

  void extendDuration(int packageId) {
    setState(() {
      selectedPackage = packageId;
      packages.forEach((p) => p.isActive = false);
      packages[packageId].isActive = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ScreensTitle(title: "My package"),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              itemCount: packages.length,
              itemBuilder: (context, index) {
                return BusPackageCard(
                  package: packages[index],
                  isSelected: selectedPackage == packages[index].id,
                  onExtend: () => extendDuration(packages[index].id),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BusPackage {
  int id;
  String image;
  int hours;
  int minutes;
  int seconds;
  int price;
  bool isActive;

  BusPackage({
    required this.id,
    required this.image,
    required this.hours,
    required this.minutes,
    required this.seconds,
    required this.price,
    required this.isActive,
  });
}

class BusPackageCard extends StatefulWidget {
  final BusPackage package;
  final bool isSelected;
  final VoidCallback onExtend;

  BusPackageCard({
    required this.package,
    required this.isSelected,
    required this.onExtend,
  });

  @override
  _BusPackageCardState createState() => _BusPackageCardState();
}

class _BusPackageCardState extends State<BusPackageCard> {
  late int hours, minutes, seconds;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    hours = widget.package.hours;
    minutes = widget.package.minutes;
    seconds = widget.package.seconds;

    if (widget.package.isActive) {
      startTimer();
    }
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() => seconds--);
      } else if (minutes > 0) {
        setState(() {
          minutes--;
          seconds = 59;
        });
      } else if (hours > 0) {
        setState(() {
          hours--;
          minutes = 59;
          seconds = 59;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant BusPackageCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.package.isActive && !oldWidget.package.isActive) {
      hours = widget.package.hours;
      minutes = widget.package.minutes;
      seconds = widget.package.seconds;
      startTimer();
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isActive = widget.package.isActive;

    return Card(
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Package 1",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Image.asset(widget.package.image, width: 80, height: 80),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Count Down for Near Bus",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                timeBox("$hours", "HOURS"),
                timeBox("$minutes", "MINUTES"),
                timeBox("$seconds", "SECONDS"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("24 Nov 2024",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Color(0xff8E8888),
                          fontSize: 15,
                        )),
                Text("08:00 AM",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Color(0xff8E8888),
                          fontSize: 15,
                        )),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Cairo",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Color(0xff8E8888),
                          fontSize: 15,
                        )),
                Image(image: AssetImage("assets/images/line.png")),
                Text("Menouf",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Color(0xff8E8888),
                          fontSize: 15,
                        )),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Duration 1h 15m",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Color(0xff8E8888),
                          fontSize: 15,
                        )),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Price:",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Color(0xff8E8888),
                        fontSize: 19,
                        fontWeight: FontWeight.w600)),
                Text(" 500 L.E",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.red,
                        fontSize: 19,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            SizedBox(height: 10),
            Botton(tittle: "Extend The Duration", onclick: () {}),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffBC1E1E)),
                  borderRadius: BorderRadius.circular(22)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "+",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffBC1E1E)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget timeBox(String value, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Text(value,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 4),
        Text(label,
            style:
                Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 8)),
      ],
    );
  }
}


