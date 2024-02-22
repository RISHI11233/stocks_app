import 'dart:async';

import 'package:stockapp/Loginpage.dart';
import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Newpage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.lightBlue.shade400, Colors.tealAccent])),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/stockslogo.png",
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "STOCK streak",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 300,
            ),
            const Text("ENJOY THE TRADING..."),
          ],
        ),
      ),
    );
  }
}
