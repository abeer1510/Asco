import 'package:asco/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CallUs extends StatelessWidget {
  static const String routeName="CallUs";
  const CallUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage("assets/images/background2.png"),fit: BoxFit.fill,width: double.infinity,),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, HomeScreen.routName);
                      },
                        child: Image(image: AssetImage("assets/images/back.png"),width: 20,height: 20,fit:BoxFit.fill,)),

                    Text("Call Us",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,fontSize: 24),),
                    SizedBox(width: 10,)],
                  ),
                ),
                Spacer(),
                Image(image: AssetImage("assets/images/voice.png")),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF7F8F9),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0x38000000))
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 20),
                          child: Image(image: AssetImage("assets/images/whath.png")),
                        ),
                        Text("Call us Whatsapp",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Color(
                            0xB8000000),fontSize: 18,
                        fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text("or",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Color(
                      0xA8000000),fontSize: 20, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 180),
                    decoration: BoxDecoration(
                        color: Color(0xffF7F8F9),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0x38000000))
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                          child: Image(image: AssetImage("assets/images/calling.png")),
                        ),

                        Text("   Call us Phone",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Color(
                            0xB8000000),fontSize: 18,
                            fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
