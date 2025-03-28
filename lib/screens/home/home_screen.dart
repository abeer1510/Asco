import 'package:asco/screens/home/taps/home_tap/default_home_tap.dart';
import 'package:asco/screens/home/taps/home_tap/home_tap.dart';
import 'package:asco/screens/home/taps/my_package/my_package.dart';
import 'package:asco/screens/home/taps/trips_tap.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "HomeScreen";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  int _selectedIndex = 1;
  int homeScreenIndex = 0;

  final List<String> icons = [
    "assets/images/pakage.png",
    "assets/images/home.png",
    "assets/images/trips.png",
  ];

  final List<String> labels = ["My Package", "Home", "Trips"];

  void _onItemTapped(int index) {
    setState(() {
      if (index == 1) {
        if (_selectedIndex == 1) {
          homeScreenIndex = (homeScreenIndex + 1) % 2;
        } else {
          _selectedIndex = 1;
          homeScreenIndex = 0;
        }
      } else {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: _selectedIndex == 1
                  ? homeTabs[homeScreenIndex]
                  : tabs[_selectedIndex],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_selectedIndex == 1) {
              homeScreenIndex = (homeScreenIndex + 1) % 2;
            } else {
              _selectedIndex = 1;
              homeScreenIndex = 0;
            }
          });
        },
        backgroundColor: const Color(0xffBC1E1E),
        shape: const CircleBorder(),
        child: ColorFiltered(
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          child: Image.asset(
            icons[_selectedIndex],
            width: 28,
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: Stack(
        alignment: Alignment.center,
        children: [
          Image(image: AssetImage("assets/images/border.png"),fit: BoxFit.cover,height: 80,),
          BottomAppBar(
            height: 80,
            shape: const CircularNotchedRectangle(),
            color: Colors.transparent,
            notchMargin: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildNavItem(0),
                  buildNavItem(2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(int index) {
    bool isActive = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            _selectedIndex == index ? icons[1] : icons[index],
            width: 28,
            color: isActive ? Colors.grey : Colors.grey,
          ),
          const SizedBox(height: 4),
          Text(
            _selectedIndex == index ? labels[1] : labels[index],
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: isActive ? Colors.grey : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> tabs = [
    BusPackagesScreen(),
    HomeTap(),
    TripsTap(),
  ];

  List<Widget> homeTabs = [
    DefaultHomeTap(),
    HomeTap(),
  ];
}

