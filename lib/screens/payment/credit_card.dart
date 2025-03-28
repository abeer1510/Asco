import 'package:asco/screens/register_screen/text_form.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
   CreditCard({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
   final TextEditingController _expireController = TextEditingController();
   final TextEditingController _cvvController = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Column(children: [
       Image(image: AssetImage("assets/images/credit.PNG"),width: double.infinity,fit: BoxFit.fill,),
      SizedBox(height: 16,),
      TextForm(label: 'Card Holder Name', controller: _nameController, surface: '',),
      TextForm(label: 'Card Number', controller: _phoneController, surface: '',keyboardType: TextInputType.phone),
      Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
        Expanded(child: TextForm(label: 'Expire Date', controller: _expireController, surface: '',)),
        Spacer(),
        Expanded(child: TextForm(label: 'CVV', controller: _cvvController, surface: '',keyboardType: TextInputType.phone)),

      ],)



    ],);
  }
}
