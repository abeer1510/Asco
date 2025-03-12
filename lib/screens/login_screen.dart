import 'package:asco/screens/home_screen.dart';
import 'package:asco/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LoginScreen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100,left: 35),
              child: Text("Welcome back! Glad \nto see you, Again!",style: Theme.of(context).
              textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 26),),
            ),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/login.png")),
          ],

        ),
        SizedBox(height: 50,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(children: [
            Expanded(child: Container(
              height: 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xffC4C4C4).withOpacity(0),Color(0xffBB1515),])
              ),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("Login with",style: Theme.of(context).textTheme.titleMedium,),
            ),
            Expanded(child: Container(
              height: 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color(0xffBB1515),Color(0xffC4C4C4).withOpacity(0),])
              ),
            )),

          ],),
        ),
        GestureDetector(
          onTap: (){_showAccountSelection(context);},

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF7F8F9),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0x47000000),)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Image(image: AssetImage("assets/images/gmail.png")),
                  ),
                  SizedBox(width: 20,),
                  Text("Login with Gmail",style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500,fontSize: 20),)

                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 50,),
        InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, HomeScreen.routName);
          },
          child: Text("Continue as a guest",style: Theme.of(context).textTheme.titleMedium!.
          copyWith(fontSize: 18,fontWeight: FontWeight.w700,decoration: TextDecoration.underline,decorationThickness: 2,),),
        )
      ],),
    );
  }
  void _showAccountSelection(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: EdgeInsets.zero,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 23),
                child: Text(
                  "Choose An Account To Continue to app",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 20),
              Divider(),
              ListTile(
                leading:Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xff7F1313),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 14),
                    child: Text("M",style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),),
                  ),),
                title: Text("Mai Ali",style: Theme.of(context).textTheme.titleMedium!.copyWith(
                 fontSize: 18, fontWeight: FontWeight.w500,)),

                subtitle:Text("maiali11@gmail.com") ,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.group_add),
                title: Text("Add another account"),

                onTap: () {
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
