import 'dart:async';
import 'package:flutter/material.dart';

import 'Onboarding.dart';
// import 'PaymentCard.dart';
import 'PaymentCard.dart';
import 'Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
      // home: Onboarding(),
      // home: const AddNewCardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
