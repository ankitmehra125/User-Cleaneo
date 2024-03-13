
import 'package:cleaneo_user_app/Extra%20Pages/dpVerificatino_page.dart';
import 'package:cleaneo_user_app/pages/dryclean_page.dart';
import 'package:cleaneo_user_app/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main()
{
  // runApp(DevicePreview(
  //     enabled: true,
  //     builder: (context) => const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
    );
  }
}













