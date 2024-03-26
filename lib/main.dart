import 'package:cleaneo_user_app/Dashboard/Orders/yourOrders_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
import 'package:cleaneo_user_app/Extra%20Pages/dpVerificatino_page.dart';
import 'package:cleaneo_user_app/Extra%20Pages/otp_process_page.dart';
import 'package:cleaneo_user_app/pages/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'dart:io';



void main() async
{
  // runApp(DevicePreview(
  //     enabled: true,
  //     builder: (context) => const MyApp()));
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
   ? await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyCojbcHiDFqjhWYWjtamxfgNpjExBg27ds",
        appId: "1:1053746743603:android:04d432ad171b5595205646",
        messagingSenderId: "1053746743603",
        projectId: "cleaneo-userapp")
  )
  : await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
      // home: OTPProcessPage(),
    );
  }
}














