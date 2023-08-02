// import 'package:flutter/material.dart';
// import 'ProfilePage.dart';

// class PaymentCard extends StatefulWidget {
//   const PaymentCard({super.key});

//   @override
//   State<PaymentCard> createState() => _PaymentCardState();
// }

// class _PaymentCardState extends State<PaymentCard> {
//   var nameText = TextEditingController();
//   var cardnumberText = TextEditingController();
//   var cvvText = TextEditingController();
//   var expiryText = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('PaymentCard Screen'),
//       ),
//       body: Center(
//           child: Container(
//               width: 240,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextField(
//                     controller: nameText,
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                         hintText: 'Card name',
//                         focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide(
//                                 color: Color.fromARGB(255, 252, 115, 4),
//                                 width: 2)),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide(
//                                 color: Color.fromARGB(255, 1, 94, 255)))),
//                   ),
//                   Container(
//                     height: 12,
//                   ),
//                   TextField(
//                     keyboardType: TextInputType.number,
//                     controller: cardnumberText,
//                     decoration: InputDecoration(
//                       hintText: 'Card number',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 255, 255, 252))),
//                       //prefixText: "password",
//                     ),
//                   ),
//                   Container(
//                     height: 12,
//                   ),
//                   TextField(
//                     keyboardType: TextInputType.number,
//                     controller: cvvText,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       hintText: 'CVV',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 252, 252, 3))),
//                       //prefixText: "password",
//                     ),
//                   ),
//                   Container(
//                     height: 12,
//                   ),
//                   TextField(
//                     keyboardType: TextInputType.number,
//                     controller: expiryText,
//                     decoration: InputDecoration(
//                       hintText: 'Expiry in MM-YYYY',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(12),
//                           borderSide: BorderSide(
//                               color: Color.fromARGB(255, 210, 2, 252))),
//                       //prefixText: "password",
//                     ),
//                   ),
//                   ElevatedButton(
//                       onPressed: () {
//                         String uname = nameText.text.toString();
//                         String ucardnumber = cardnumberText.text;
//                         String ucvv = cvvText.text;
//                         String uexpiry = expiryText.text;
//                         Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const ProfilePage()));
//                         print(uname + ucardnumber + ucvv + uexpiry);
//                       },
//                       child: Text('Proceed to payment')),
//                 ],
//               ))),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quarks_systems/constains.dart';
import 'package:phone_number/phone_number.dart';

import 'Onboarding.dart';
import 'ProfilePage.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Payment Card"),
      ),
      body: Center(
        child: Container(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              children: [
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(16)
                        ],
                        decoration: InputDecoration(
                          hintText: "Card Number",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
                        child: TextFormField(
                          decoration: InputDecoration(hintText: "Name on Card"),
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(3)
                        ],
                        decoration: InputDecoration(
                          hintText: "CVV",
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(6)
                        ],
                        decoration: InputDecoration(
                          hintText: "MMYYYY",
                        ),
                      ),
                      Container(
                        height: 12,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProfilePage()));
                          },
                          child: Text('Proceed to profile')),
                      Container(
                        height: 12,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Onboarding()));
                          },
                          child: Text('Back')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
