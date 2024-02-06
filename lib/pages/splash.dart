import 'dart:async';
import 'package:cleaneo_user_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 2 seconds and then navigate to the login page
    Timer(
      Duration(seconds: 3),
          () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => WelcomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'logoTag', // Use the same tag for the Hero widget in the login page
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SvgPicture.asset("assets/images/splash.svg", fit: BoxFit.cover),
        ),
      ),
    );
  }
}