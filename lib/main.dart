import 'package:flutter/material.dart';
import 'package:news24/screens/sign_up.dart';

final Color black = Color(0xff180E19);
final Color grey = Color(0xff909090);
final Color lightgrey = Color(0xffEEEEEE);
final Color white = Color(0xffffffff);

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News 24",
      home: SignUp(),
    );
  }
}
