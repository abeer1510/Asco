import 'package:asco/items/botton.dart';
import 'package:asco/screens/home/home_screen.dart';
import 'package:asco/screens/payment/payment_screen.dart';
import 'package:asco/screens/subcribe/location_item.dart';
import 'package:flutter/material.dart';


class SubscribeScreen extends StatefulWidget {
  static const String routeName = "SubscribeScreen";

  @override
  _SubscribeScreenState createState() => _SubscribeScreenState();
}

class _SubscribeScreenState extends State<SubscribeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _selectedPayment = "Vodafone Cash";

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Subscriptions", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500, fontSize: 24),),
        centerTitle: true,
        leading: IconButton(icon: Image.asset("assets/images/back.png"),
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.routName);
          },
        ),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          labelColor: Color(0xff101010),
          unselectedLabelColor: Colors.grey,
          indicatorColor: Color(0xffBC1E1E),
          labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),
          tabs: [
            Tab(text: "First Semester",),
            Tab(text: "Second Term"),
            Tab(text: "Weekly"),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image(image: AssetImage("assets/images/background.png"), width: double.infinity, fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.only(bottom: 90,top: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xff610505))
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Note:",style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16,color: Color(0xff5F0B0B)),),
                              ],
                            ),
                            Text(
                              "The first semester lasts for 3 months, and the Second Term lasts for 6 months, while the weekly subscription is on a weekly basis.",
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LocationItem(label: "From", value: "Cairo", ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Image(image: AssetImage("assets/images/vector.png")),
                          ),
                          LocationItem(label: "To", value: "Menof", ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LocationItem(label: "Date", value: "24 Mar 24", ),
                          LocationItem(label: "Time", value: "8:00 AM", ),

                        ],
                      ),
                      SizedBox(height: 16),
                    ],),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(image: AssetImage("assets/images/buss_white.png",) ,height: 80),
                      SizedBox(width: 20,),
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Column(children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0,),
                                child: Text("500 L.E", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xCC500808)),),),),
                             Image(image: AssetImage("assets/images/buss2.png",) ,height: 110),
                          ],),
                          Container(
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(border: Border.all(color: Color(0x87000000))),)],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Text("Payment Method", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20,fontWeight: FontWeight.w700),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(children: [

                      _buildPaymentOption("Vodafone Cash", "assets/images/vodafon.png"),
                      _buildPaymentOption("Insta Pay", "assets/images/insta.png"),
                      _buildPaymentOption("Credit Card", "assets/images/card.png"),
                      Botton(tittle: "Next", onclick:  () {Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(paymentMethod: _selectedPayment),),
                      );}),
                    ],),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentOption(String title, String iconPath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPayment = title;
        });
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color(0x4f000000),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(iconPath, width: 30, height: 30),
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Visibility(
              visible: _selectedPayment == title,
              child: Checkbox(
                value: _selectedPayment == title,
                activeColor: Colors.blue,
                onChanged: (bool? value) {
                  setState(() {
                    _selectedPayment = title;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
