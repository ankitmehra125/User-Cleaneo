import 'package:cleaneo_user_app/Auth/login_page.dart';
import 'package:cleaneo_user_app/Auth/signup_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wallet/addMoney_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wallet/wallet_page.dart';
import 'package:cleaneo_user_app/pages/Donateslider.dart';
import 'package:cleaneo_user_app/pages/address_page.dart';
import 'package:cleaneo_user_app/Help/customer_service_page.dart';
import 'package:cleaneo_user_app/pages/donate.dart';
import 'package:cleaneo_user_app/pages/dryclean_page.dart';
import 'package:cleaneo_user_app/Payment/manage_cards_page.dart';
import 'package:cleaneo_user_app/pages/myprofile.dart';
import 'package:cleaneo_user_app/Auth/otp_page.dart';
import 'package:cleaneo_user_app/Payment/payment_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wash/quantity_wise_page.dart';
import 'package:cleaneo_user_app/Dashboard/Notifications/rating_page.dart';
import 'package:cleaneo_user_app/Help/termsandcondition_page.dart';
import 'package:cleaneo_user_app/pages/refer_page.dart';
import 'package:cleaneo_user_app/Dashboard/Notifications/reportdispute_page.dart';
import 'package:cleaneo_user_app/pages/review_page.dart';
import 'package:cleaneo_user_app/pages/wash_page.dart';
import 'package:cleaneo_user_app/Auth/welcome_page.dart';
import 'package:cleaneo_user_app/Help/help_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
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
      home: SplashScreen(),
    );
  }
}




