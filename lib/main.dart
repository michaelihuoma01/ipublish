import 'package:flutter/material.dart';
import 'package:ipublish/screens/mainPage.dart'; 
import 'package:ipublish/screens/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
