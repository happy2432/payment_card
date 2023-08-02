// import 'package:flutter/material.dart';

// class Onboarding extends StatefulWidget {
//   @override
//   _OnboardingState createState() => _OnboardingState();
// }

// class _OnboardingState extends State<Onboarding> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           stops: [0.1, 0.4, 0.7, 0.9],
//           colors: [
//             Color(0xFF3594DD),
//             Color(0xFF4563DB),
//             Color(0xFF5036D5),
//             Color(0xFF5B16D0),
//           ],
//         )),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'PaymentCard.dart';
// import 'package:email_auth/email_auth.dart';
// import 'package:phone_number/phone_number.dart';
// import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding Screen'),
      ),
      body: Center(
          child: Container(
              width: 240,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emailText,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 252, 115, 4),
                                width: 2)),
                        //prefixText: "email id",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 1, 94, 255)))),
                  ),
                  Container(
                    height: 12,
                  ),
                  TextField(
                    controller: passwordText,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 252))),
                      //prefixText: "password",
                    ),
                  ),
                  Container(
                    height: 12,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String uEmail = emailText.text.toString();
                        String uPassword = passwordText.text;
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AddNewCardScreen()));
                        // print(uEmail + uPassword);
                      },
                      child: Text('login')),
                ],
              ))),
    );
  }
}
