import 'package:asco/screens/home/home_screen.dart';
import 'package:asco/screens/register_screen/register_screen.dart';
import 'package:flutter/material.dart';

void showAccountSelection(BuildContext context) {
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
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, HomeScreen.routName);
              },
              child: ListTile(
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

