// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thoughts/screens/auth/login.dart';
import 'package:thoughts/screens/auth/register.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => RegisterState();
}

class RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Center(
            child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Stack(alignment: Alignment.center, children: [
              Positioned(
                bottom: 0,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(124, 238, 0, 255),
                      borderRadius: BorderRadius.circular(150)),
                ),
              )
                  .animate(
                      onPlay: (controller) => controller.repeat(
                          reverse: true, period: Duration(milliseconds: 2400)))
                  .move(
                    begin: Offset(0, 0),
                    end: Offset(200, -200),
                  ),
              Positioned(
                right: 0,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 21, 0, 255),
                      borderRadius: BorderRadius.circular(150)),
                ),
              )
                  .animate(
                      onPlay: (controller) => controller.repeat(
                          reverse: true, period: Duration(milliseconds: 3400)))
                  .move(
                    begin: Offset(0, 0),
                    end: Offset(-400, 600),
                  ),
              Positioned(
                right: 0,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(127, 102, 102, 102),
                      borderRadius: BorderRadius.circular(150)),
                ),
              )
                  .animate(
                      onPlay: (controller) => controller.repeat(
                          reverse: true, period: Duration(milliseconds: 4600)))
                  .move(
                    begin: Offset(0, 0),
                    end: Offset(400, 600),
                  ),
              Positioned(
                left: 0,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(148, 0, 217, 255),
                      borderRadius: BorderRadius.circular(150)),
                ),
              )
                  .animate(
                      onPlay: (controller) => controller.repeat(
                          reverse: true, period: Duration(milliseconds: 5400)))
                  .move(
                    begin: Offset(0, 0),
                    end: Offset(-200, 400),
                  ),
              Positioned(
                top: 0,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(137, 234, 0, 255),
                      borderRadius: BorderRadius.circular(150)),
                ),
              )
                  .animate(
                      onPlay: (controller) => controller.repeat(
                          reverse: true, period: Duration(milliseconds: 6400)))
                  .move(
                    begin: Offset(0, 0),
                    end: Offset(100, 600),
                  ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(52, 0, 0, 0),
                            Color.fromARGB(86, 0, 0, 0),
                          ]),
                    ),
                    child: Container()),
              )
            ]),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Register",
                  style: GoogleFonts.adamina(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ).animate().moveY(
                begin: 0, end: -600, duration: Duration(milliseconds: 600)),
            Container(
              height: 600,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Color.fromARGB(73, 0, 0, 0),
                  borderRadius: BorderRadius.circular(40)),
              child: SizedBox(
                // height: 400,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(50, 255, 255, 255),
                            borderRadius: BorderRadius.circular(32)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 4.0),
                            child: Center(
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email',
                                      prefixIcon: Icon(Icons.email,
                                          color: Colors.white),
                                      hintStyle: GoogleFonts.adamina(
                                          color: Colors.white, fontSize: 16)),
                                  style: GoogleFonts.adamina(
                                      color: Colors.white, fontSize: 16)),
                            ),
                          ),
                        ),
                      ),
                    ).animate().moveY(
                          // delay: Duration(milliseconds: 1000),
                          begin: 600,
                          end: 0,
                          duration: Duration(milliseconds: 800),
                        ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(50, 255, 255, 255),
                            borderRadius: BorderRadius.circular(32)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 4.0),
                            child: Center(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    prefixIcon: Icon(Icons.password,
                                        color: Colors.white),
                                    hintStyle: GoogleFonts.adamina(
                                        color: Colors.white, fontSize: 16)),
                                style: GoogleFonts.adamina(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ).animate().moveY(
                          // delay: Duration(milliseconds: 1000),
                          begin: 600,
                          end: 0,
                          duration: Duration(milliseconds: 900),
                        ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login())),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(50, 255, 255, 255),
                              borderRadius: BorderRadius.circular(32)),
                          child: Center(
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "Register",
                                    style: GoogleFonts.adamina(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                )),
                          ),
                        ),
                      ).animate().moveY(
                            // delay: Duration(milliseconds: 1000),
                            begin: 600,
                            end: 0,
                            duration: Duration(milliseconds: 1000),
                          ),
                    ),
                    Stack(alignment: Alignment.center, children: [
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                        height: 100,
                        indent: 32,
                        endIndent: 32,
                      ),
                      Container(
                        height: 20,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(32)),
                        child: Center(
                          child: Text(
                            "Or",
                            style: GoogleFonts.adamina(
                                color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      )
                    ]).animate().moveY(
                          begin: 600,
                          end: 0,
                          duration: Duration(milliseconds: 1100),
                        ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(50, 255, 255, 255),
                          borderRadius: BorderRadius.circular(32)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: Colors.black,
                                      actions: [
                                        TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Text("Ok"))
                                      ],
                                      title: Text("Service Not Available!",
                                          style: GoogleFonts.adamina(
                                              color: Colors.white,
                                              fontSize: 24)),
                                      content: Text("Try sometime later!",
                                          style: GoogleFonts.adamina(
                                              color: Colors.grey)),
                                    )),
                            child: Container(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Image.asset(
                                      'lib/images/google.png',
                                      height: 40,
                                    )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(111, 255, 255, 255),
                                  shape: BoxShape.circle),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: Colors.black,
                                      actions: [
                                        TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Text("Ok"))
                                      ],
                                      title: Text("Service Not Available!",
                                          style: GoogleFonts.adamina(
                                              color: Colors.white,
                                              fontSize: 24)),
                                      content: Text("Try sometime later!",
                                          style: GoogleFonts.adamina(
                                              color: Colors.grey)),
                                    )),
                            child: Container(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Image.asset(
                                      'lib/images/facebook.png',
                                      height: 40,
                                    )))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(111, 255, 255, 255),
                                  shape: BoxShape.circle),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: Colors.black,
                                      actions: [
                                        TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: Text("Ok"))
                                      ],
                                      title: Text("Service Not Available!",
                                          style: GoogleFonts.adamina(
                                              color: Colors.white,
                                              fontSize: 24)),
                                      content: Text("Try sometime later!",
                                          style: GoogleFonts.adamina(
                                              color: Colors.grey)),
                                    )),
                            child: Container(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                        child: Image.asset(
                                      'lib/images/apple.png',
                                      height: 40,
                                    )))),
                          ),
                        ],
                      ),
                    ).animate().moveY(
                          begin: 600,
                          end: 0,
                          duration: Duration(milliseconds: 1200),
                        ),
                  ],
                ),
              ).animate().moveY(
                    begin: 0,
                    end: 100,
                    duration: Duration(milliseconds: 1000),
                  ),
            ).animate().moveY(
                  begin: 600,
                  end: 0,
                  duration: Duration(milliseconds: 600),
                ),
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: GoogleFonts.adamina(color: Colors.white)),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login())),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Login",
                        style: GoogleFonts.adamina(color: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
            ).animate().moveY(
                  begin: 600,
                  end: 0,
                  duration: Duration(milliseconds: 1300),
                ),
          ],
        )));
  }
}
