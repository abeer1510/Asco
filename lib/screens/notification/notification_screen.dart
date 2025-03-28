import 'package:asco/items/screens_title.dart';
import 'package:asco/screens/notification/notificatin_item.dart';
import 'package:asco/screens/notification/notification_listtile.dart';
import 'package:asco/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  static const String routeName="Notifications";

  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage("assets/images/background2.png"),fit: BoxFit.fill,width: double.infinity,),
      
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                ScreensTitle(title: "Notification",),
                Padding(
                  padding: const EdgeInsets.only(top:60,),
                  child: NotificatinItem(title: "New Package ",subtitle: "You Have New package to Subscribe ",image: "not1",),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Divider(color: Color(0xffEDEDED),),
                ),
                NotificatinItem(title: "Account Setup Successfull! ",subtitle: "Special promotion only valid today",image: "not2",),
                SizedBox(height: 20,),
                NotificationListtile(image: "not3", title: "Nearbus", subtitle: "Your Near bus Comming Soon one Day\n Left"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Divider(color: Color(0xffEDEDED),),
                ),
                NotificationListtile(image: "not4", title: "Credit Card Connected", subtitle: "Special promotion only valid today"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Divider(color: Color(0xffEDEDED),),
                ),
                NotificationListtile(image: "not5", title: "Confirmed Request", subtitle: "Your Request has been Confirmed"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
