import 'package:cleaneo_user_app/Auth/signup_page.dart';
import 'package:cleaneo_user_app/pages/Donateslider.dart';
import 'package:cleaneo_user_app/pages/customer_service_page.dart';
import 'package:cleaneo_user_app/pages/donate.dart';
import 'package:cleaneo_user_app/pages/dryclean_page.dart';
import 'package:cleaneo_user_app/pages/manage_cards_page.dart';
import 'package:cleaneo_user_app/pages/myprofile.dart';
import 'package:cleaneo_user_app/Auth/otp_page.dart';
import 'package:cleaneo_user_app/pages/payment_page.dart';
import 'package:cleaneo_user_app/pages/quantity_wise_page.dart';
import 'package:cleaneo_user_app/pages/termsandcondition_page.dart';
import 'package:cleaneo_user_app/pages/wash_page.dart';
import 'package:cleaneo_user_app/Auth/welcome_page.dart';
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
      // home: SplashScreen(),
      // home: SignUpPage(),
      // home: OTPPage(),
      // home: HomePage(),
      // home: WelcomePage()  
      // home: SplashScreen(),
      // home: OTPPage(),
      // home: ManageCardsPage()
      home: WashPage(),
      // home: DryCleanPage(),
      // home: QuantityWisePage(),
      // home: HelpPage(),
      // home: CustomerServicePage(),
      // home: Donate(),
      // home: PaymentPage(),
    );
  }
}

