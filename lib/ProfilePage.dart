import 'dart:io';

import 'package:flutter/material.dart';

import 'PaymentCard.dart';
// import 'ProfilePage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var nameText = TextEditingController();
  var cardnumberText = TextEditingController();
  var cvvText = TextEditingController();
  var expiryText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfilePage Screen'),
      ),
      body: Center(
          child: Container(
              width: 240,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('images/Profile.png')),
                  Container(
                    height: 12,
                  ),
                  const Text("Email ID: happyshah2432@gmail.com"),
                  Container(
                    height: 12,
                  ),
                  const Text("Username: Happy_Shah"),
                  Container(
                    height: 12,
                  ),
                  const Text("Address: Idar"),
                  Container(
                    height: 12,
                  ),
                  const Text("Payment mode: Card"),
                  Container(
                    height: 12,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String uname = nameText.text.toString();
                        String ucardnumber = cardnumberText.text;
                        String ucvv = cvvText.text;
                        String uexpiry = expiryText.text;
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddNewCardScreen()));
                        print(uname + ucardnumber + ucvv + uexpiry);
                      },
                      child: const Text('Go back to Payment screen')),
                ],
              ))),
    );
  }
}
