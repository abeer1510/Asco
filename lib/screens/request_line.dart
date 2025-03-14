import 'package:asco/items/botton.dart';
import 'package:asco/screens/home_screen.dart';
import 'package:flutter/material.dart';

class RequestLine extends StatelessWidget {
  static const String routeName="RequestLine";

  const RequestLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage("assets/images/background2.png"),fit: BoxFit.fill,width: double.infinity,),

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
                          onTap: (){
                            Navigator.pushReplacementNamed(context, HomeScreen.routName);
                          },
                          child: Image(image: AssetImage("assets/images/back.png"),width: 20,height: 20,fit:BoxFit.fill,)),

                      Text("Request Line",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 24),),
                      SizedBox(width: 10,)],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text("Make your appointment for tomorrow",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 17),),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Expanded(
                    child: Container(
                      child: Text("Time",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 16,color: Color(
                            0xBA000000)),),
                    ),
                  ),
                    SizedBox(width: 10,),
                    Expanded(
                    child: Container(
                      child: Text("Date",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 16,color: Color(
                            0xBA000000)),),
                    ),
                  ),
                ],),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEDECEC),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text("9:00 Am",
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 16,color: Color(
                                  0xB3000000)),),
                          ),
                          Icon(Icons.arrow_drop_down )
                        ],

                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEDECEC),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text("24 Nov 2024",
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 16,color: Color(
                              0xB3000000),),textAlign: TextAlign.center,),
                      ),
                    ),
                  )
                ],),

                SizedBox(height: 60,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("From", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xBA000000)),),
                    Text("To", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xBA000000)),)
                ],),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cairo", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600,fontSize: 16,),),
                    Text("Menof", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600,fontSize: 16,),)
                  ],),
                
                Image(image: AssetImage("assets/images/car.png")),
                SizedBox(height: 10),

                Text("Duration 1h 15m", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 16,),),

                Spacer(),
                
                Botton(tittle: "Request",onclick: (){
                  _showDone(context);
                },),

                Spacer()
              ],
            ),
          ),
        ],
      ),
    );
  }
  void _showDone(BuildContext context) {
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
                padding: const EdgeInsets.symmetric(vertical: 23,),
                child: Text(
                  "Your request is being processed. Please\n wait for confirmation notification.",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w700),),
              ),
              Image(image: AssetImage("assets/images/accept.png")),
              // SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Botton(tittle: "Done",onclick: (){
                  Navigator.pushReplacementNamed(context, HomeScreen.routName);
                },),
              ),
            ],
          ),
        );
      },
    );
  }
}
