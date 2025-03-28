import 'package:asco/screens/home/drawe_item.dart';
import 'package:asco/screens/call_us_screen.dart';
import 'package:asco/screens/language/language_screen.dart';
import 'package:asco/screens/login/login_screen.dart';
import 'package:asco/screens/notification/notification_screen.dart';
import 'package:asco/screens/privacy/privacy_screen.dart';
import 'package:asco/screens/request/request_line_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:100,bottom: 100 ),
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Stack(
          children: [
            Image(image: AssetImage("assets/images/drawer.png"),
              fit: BoxFit.fill,width: MediaQuery.of(context).size.width*0.65,),
            Padding(
              padding: const EdgeInsets.only(left: 16,top: 30),
              child: Column(children: [
                ListTile(
                  title: Text(" Mai Ahmed",style: Theme.of(context).textTheme.titleMedium!.
                  copyWith(color: Color(0xffD06262),fontSize: 24, ),),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text("Maiahmed22@gmail,com",style: Theme.of(context).textTheme.titleSmall!.
                    copyWith(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0x61000000)),),
                  ),
                ),
                SizedBox(height: 30,),
                DraweItem(text: " Call Us",image:"call" ,onTap: (){Navigator.pushNamed(context, CallUs.routeName);},),

                DraweItem(text: " Request a line ",image:"request" ,onTap: (){Navigator.pushNamed(context, RequestLine.routeName);},),

                DraweItem(text: " Privacy",image:"privacy" ,onTap: (){Navigator.pushNamed(context, Privacy.routeName);},),

                DraweItem(text: " Language",image:"language" ,onTap: (){Navigator.pushNamed(context, Language.routeName);},),

                DraweItem(text: "Notification",image:"notifcation" ,onTap: (){Navigator.pushNamed(context, Notifications.routeName);},),

                DraweItem(text: " Log out",image:"logout" ,onTap: (){Navigator.pushReplacementNamed(context, LoginScreen.routeName);},),

              ],),
            )
          ],
        ),
      ),
    );
  }
}
