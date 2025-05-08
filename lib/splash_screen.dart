import 'dart:async'; // Add this line
import 'package:datepicker/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage(title: 'Homepage')),
      );
    });
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'Tech Supersonic',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
