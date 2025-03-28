import 'package:asco/items/botton.dart';
import 'package:asco/items/screens_title.dart';
import 'package:asco/items/show_done.dart';
import 'package:asco/screens/home/home_screen.dart';
import 'package:asco/screens/payment/credit_card.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  static const String routeName = "PaymentScreen";
  final String paymentMethod;

   PaymentScreen({super.key,required this.paymentMethod});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(widget.paymentMethod=="Credit Card"?"Enter Your Card":"",style: Theme.of(context).textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.w700,fontSize: 20
        ),),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: (){
              Navigator.pushNamed(context, HomeScreen.routName);
            },
              child: Image(image: AssetImage("assets/images/back.png"))),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
          SizedBox(height: 16,),
          if (widget.paymentMethod == "Vodafone Cash" || widget.paymentMethod == "Insta Pay")...{
            RichText(
              text: TextSpan(
                text: '"My number will be the transfer number through ',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                    text: widget.paymentMethod == "Vodafone Cash" ? "Vodafone Cash" : "InstaPay",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16,color: Color(
                        0xffbc1717)),
                  ),
                  TextSpan(
                    text: ' service. Please make sure to attach a screenshot after the transfer for confirmation."',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Image.asset("assets/images/upload.png"),
            SizedBox(height: 200,),
            Botton(tittle: "Request", onclick:(){showDone(context,"Your Request Has Been Done Successfully","successful");} ),
          }
          else if (widget.paymentMethod == "Credit Card")...{
        
              CreditCard(),
              Row(children: [
                GestureDetector(
                    onTap: (){
                      setState(() {
                        isSelected=!isSelected;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(isSelected?Icons.check_box :Icons.check_box_outline_blank),
                        Text("save your credit for another time",style: Theme.of(context).textTheme.titleSmall,)
                      ],
                    )),
              ],),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Botton(tittle: 'Done', onclick: () {},), ),
              Text("“After the transfer through Visa Please attach a Screenshot for confirmation.”",style: Theme.of(context).textTheme.titleMedium,),
              Padding(
                padding: EdgeInsets.only(top: 30,bottom: 60),
                child: Image.asset("assets/images/upload.png"), ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Botton(tittle: 'Request', onclick: () {showDone(context,"Your Request Has Been Done Successfully","successful");},), ),
        
        
            }
        ],),
            ),
      ),);
  }

}
