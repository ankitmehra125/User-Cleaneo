import 'package:cleaneo_user_app/pages/manage_cards_page.dart';
import 'package:cleaneo_user_app/pages/myprofile.dart';
import 'package:cleaneo_user_app/pages/otp_page.dart';
import 'package:cleaneo_user_app/pages/wash_page.dart';
import 'package:cleaneo_user_app/pages/welcome_page.dart';
import 'package:cleaneo_user_app/pages/help_page.dart';
import 'package:cleaneo_user_app/pages/home_page.dart';
import 'package:cleaneo_user_app/pages/mydrawer.dart';
import 'package:cleaneo_user_app/pages/splash.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: WelcomePage()  
      // home: SplashScreen(),
      // home: OTPPage(),
      // home: ManageCardsPage()
      // home: WashPage(),
    );
  }
}


