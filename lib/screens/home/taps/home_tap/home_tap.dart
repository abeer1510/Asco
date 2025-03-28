import 'package:asco/screens/home/app_drawer.dart';
import 'package:asco/screens/home/taps/home_tap/list_view.dart';
import 'package:asco/screens/home/taps/home_tap/next_bus.dart';
import 'package:flutter/material.dart';

class HomeTap extends StatefulWidget {
   HomeTap({super.key});

  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  int selectedTab=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.notifications,color: Colors.black,),
        )],),
      drawer: AppDrawer(),
      body: Column(
        children: [
          Container(
            height: 40,
            margin: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffBC1E1E)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                _buildTabButton("History", 0 ),
                _buildTabButton("Next Bus", 1 ),
              ],
            ),
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: selectedTab == 0 ? List123() : NextBus(),
            ),
          ),

          // Expanded(child: List123()),

        ],
      ),
    );
  }
  Widget _buildTabButton(String title, int index) {
    bool isSelected = selectedTab == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = index;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? Color(0xffBC1E1E) : Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Color(0xffFFFFFF) : Color(0xffBC1E1E),
            ),
          ),
        ),
      ),
    );
  }
}
