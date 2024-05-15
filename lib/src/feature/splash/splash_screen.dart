import 'dart:async';

import 'package:coffe_ui/src/feature/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = 'SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    animator();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
  }

  double width = 0;
  double height = 0;
  void animator() {
    setState(() {
      width = 250;
      height = 250;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: AnimatedContainer(
          duration: const Duration(seconds: 3),
          height: height,
          width: width,
          child: const Image(
            image: AssetImage('assets/images/splash.png'),
          ),
        ),
      ),
    );
  }
}
