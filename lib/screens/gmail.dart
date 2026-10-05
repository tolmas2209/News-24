import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news24/gen/assets.gen.dart';
import 'package:news24/main.dart';
import 'package:news24/screens/forgot.dart';

class Gmail extends StatefulWidget {
  const Gmail({super.key});

  @override
  State<Gmail> createState() => _GmailState();
}

class _GmailState extends State<Gmail> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(hintText: "Username"),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        decoration: InputDecoration(hintText: "Email"),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        obscureText: !isShow,
                        decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: IconButton(
                            onPressed: () {
                              isShow = !isShow;
                              setState(() {});
                            },
                            icon: !isShow == true
                                ? Icon(CupertinoIcons.eye_fill)
                                : Icon(CupertinoIcons.eye_slash_fill),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Forgot()),
                            ),
                            child: Text(
                              "Forgot password",
                              style: TextStyle(fontSize: 16, fontWeight: .w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: .center,
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Sign Un",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: .w500,
                      color: white,
                    ),
                  ),
                ),
                SizedBox(height: 60),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 1, width: 110, color: black),
                    Text(
                      "or sign or with",
                      style: TextStyle(fontSize: 13, fontWeight: .w500),
                    ),

                    Container(height: 1, width: 110, color: black),
                  ],
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 20,
                    children: [
                      SvgPicture.asset(Assets.icons.google),
                      SvgPicture.asset(Assets.icons.facebook),
                      SvgPicture.asset(Assets.icons.twitter),
                      SvgPicture.asset(Assets.icons.apple),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
