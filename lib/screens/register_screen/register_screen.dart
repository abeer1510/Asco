import 'package:asco/items/botton.dart';
import 'package:asco/items/show_done.dart';
import 'package:asco/screens/register_screen/dropown.dart';
import 'package:asco/screens/register_screen/gender.dart';
import 'package:asco/screens/register_screen/text_form.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName="RegisterScreen";
   RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String? selectedUniversity = "Menofia";
  String? selectedFaculty = "Faculty of Specific Education";
  String? selectedYear = "The first academic year";
  String? selectedCity = "Menouf";
  String? selectedGender;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Image(image: AssetImage("assets/images/background.png",),width: double.infinity,fit: BoxFit.fill,),
        Padding(
          padding: const EdgeInsets.only(top:  55,bottom: 130,right:  20,left: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Complete Resistration",style:  Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700),),
                SizedBox(height: 30,),

               TextForm(label: "User Name", controller: _nameController, surface: "*",),
               TextForm(label: "Phone", controller: _phoneController,keyboardType: TextInputType.phone,surface: "",),

               DropDown(label: "University", items: ["Menofia", "Cairo", "Alexandria"], selectedItem: selectedUniversity, onChanged: (value) {
                  setState(() => selectedUniversity = value);
                }),
                DropDown(label: "Faculty",items: ["Faculty of Specific Education", "Engineering", "Medicine"], selectedItem: selectedFaculty, onChanged: (value) {
                  setState(() => selectedFaculty = value);
                }),
                DropDown(label: "Academic year",items: ["The first academic year", "Second year", "Third year"],selectedItem:  selectedYear, onChanged: (value) {
                  setState(() => selectedYear = value);
                }),
                DropDown(label: "City",items: ["Menouf", "Cairo", "Giza"],selectedItem:  selectedCity, onChanged: (value) {
                  setState(() => selectedCity = value);
                }),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("Gender",style:  Theme.of(context).textTheme.titleMedium,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Gender(image: 'male', gender: 'Male',selectedGender: selectedGender, onSelect: (gender) {
                        setState(() {
                          selectedGender = gender;
                        });
                      },),
                    Gender(image: 'female', gender: 'Female',selectedGender: selectedGender,
                      onSelect: (gender) {
                        setState(() {
                          selectedGender = gender;
                        });
                      },),
                  ],),
                Padding(
                  padding: const EdgeInsets.only(top:  20,bottom: 10),
                  child: Text("Image of the card.",style:  Theme.of(context).textTheme.titleMedium,),
                ),
                Image.asset("assets/images/upload.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 50,right: 16,left: 16),
                  child: Botton(tittle: "Register", onclick: (){showDone(context,"Your Register Has Been Done Successfully","register"
                  );}),
                ),
              ],
            ),
          ),
        ),
      ],
    ),);
  }
}
