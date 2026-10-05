import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news24/gen/assets.gen.dart';
import 'package:news24/main.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40),
          width: double.infinity,
          child: Column(
            children: [
              SvgPicture.asset(Assets.icons.logo),
              SizedBox(height: 20),
              Text(
                "News 24",
                style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                  fontWeight: .bold,
                  color: black,
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 40,
                  vertical: 50,
                ),
                child: Column(
                  spacing: 30,
                  children: [
                    Text(
                      "Enter your email to be sent a reset password link.",
                      style: TextStyle(fontSize: 18, fontWeight: .w500),
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Email"),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: .center,
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: .w500,
                    color: white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
