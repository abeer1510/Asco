import 'package:asco/items/screens_title.dart';
import 'package:asco/screens/privacy/privacy_item.dart';
import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  static const String routeName = "Privacy";

  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill, width: double.infinity,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ScreensTitle(title: "Privacy"),
              ),
              Image(image: AssetImage("assets/images/privacy_item.png")),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 150),
                  child: ListView(
                    children: [
                      PrivacyItem(
                          title: "How do I make a purchase?",
                          description:
                              'When you find a product you want to purchase, tap on it to view the product details. Check the price, description, and available options (if applicable), and then tap the "Add to Cart" button. Follow the on-screen instructions to complete the purchase, including providing shipping details and payment information.'),
                      PrivacyItem(
                          title: "What payment methods are accepted?",
                          description:
                              'When you find a product you want to purchase, tap on it to view the product details. Check the price, description, and available options (if applicable), and then tap the "Add to Cart" button. Follow the on-screen instructions to complete the purchase, including providing shipping details and payment information.'),
                      PrivacyItem(
                          title: "How do I track my orders?",
                          description:
                              'When you find a product you want to purchase, tap on it to view the product details. Check the price, description, and available options (if applicable), and then tap the "Add to Cart" button. Follow the on-screen instructions to complete the purchase, including providing shipping details and payment information.'),
                      PrivacyItem(
                          title: "Can I cancel or return an order?",
                          description:
                              'When you find a product you want to purchase, tap on it to view the product details. Check the price, description, and available options (if applicable), and then tap the "Add to Cart" button. Follow the on-screen instructions to complete the purchase, including providing shipping details and payment information.'),
                      PrivacyItem(
                          title:
                              "How can I contact customer support for assistance?",
                          description:
                              'When you find a product you want to purchase, tap on it to view the product details. Check the price, description, and available options (if applicable), and then tap the "Add to Cart" button. Follow the on-screen instructions to complete the purchase, including providing shipping details and payment information.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
