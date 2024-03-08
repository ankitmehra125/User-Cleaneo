import 'package:cleaneo_user_app/Auth/login_page.dart';
import 'package:cleaneo_user_app/Auth/signup_page.dart';
import 'package:cleaneo_user_app/Welcome/CP_page.dart';
import 'package:cleaneo_user_app/Welcome/PP_page.dart';
import 'package:cleaneo_user_app/Welcome/TS_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:io'; // Import dart:io for exit function

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return WillPopScope(
      // Intercept the back button press event
      onWillPop: () async {
        // Close the app completely
        await exit(0);
        return true;
      },
      child: Scaffold(
        body: Container(
          color: const Color(0xff006aca),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: mQuery.size.height * 0.31,
              ),
              Center(
                child: SvgPicture.asset("assets/images/mainlogo.svg"),
              ),
              SizedBox(
                height: mQuery.size.height * 0.07,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return SignUpPage();
                              }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mQuery.size.height * 0.023,
                                    fontFamily: 'SatoshiBold'),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.04,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }));
                        },
                        child: Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                              color: const Color(0xff29b2fe),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mQuery.size.height * 0.023,
                                    fontFamily: 'SatoshiBold'),
                              )),
                        ),
                      ),
                      SizedBox(height: mQuery.size.height * 0.24,),
                      Center(
                        child: Text(
                          "By Continuing, you agree to our",
                          style: TextStyle(
                              fontSize: mQuery.size.height * 0.02,
                              color: Colors.white,
                              fontFamily: 'SatoshiMedium'),
                        ),
                      ),
                      SizedBox(height: mQuery.size.height * 0.021,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return TS();
                                  }));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Terms of Service",
                                  style: TextStyle(
                                      fontSize: mQuery.size.height * 0.016,
                                      color: Colors.white,
                                      fontFamily: 'SatoshiMedium'),
                                ),
                                SizedBox(height: mQuery.size.height * 0.0015,),
                                Container(
                                  height: mQuery.size.height * 0.0018,
                                  width: mQuery.size.width * 0.25,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return PP();
                                  }));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                      fontSize: mQuery.size.height * 0.016,
                                      color: Colors.white,
                                      fontFamily: 'SatoshiMedium'),
                                ),
                                SizedBox(height: mQuery.size.height * 0.0015,),
                                Container(
                                  height: mQuery.size.height * 0.0018,
                                  width: mQuery.size.width * 0.23,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                    return CP();
                                  }));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Content Policies",
                                  style: TextStyle(
                                      fontSize: mQuery.size.height * 0.016,
                                      color: Colors.white,
                                      fontFamily: 'SatoshiMedium'),
                                ),
                                SizedBox(height: mQuery.size.height * 0.0015,),
                                Container(
                                  height: mQuery.size.height * 0.0018,
                                  width: mQuery.size.width * 0.25,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
