import 'package:cleaneo_user_app/Auth/login_page.dart';
import 'package:cleaneo_user_app/Auth/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: const Color(0xff006aca),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: mQuery.size.height * 0.33,
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
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
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
                                  fontSize: mQuery.size.height*0.023,
                                  fontWeight: FontWeight.w700),
                            )),
                      ),
                    ),

                    SizedBox(
                      height: mQuery.size.height * 0.04,
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return LoginPage();
                        }));
                      },
                      child: Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.06,
                        decoration: BoxDecoration(
                            color: const Color(0xff29b3fe),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mQuery.size.height*0.023,
                                  fontWeight: FontWeight.w700),
                            )),
                      ),
                    ),

                    SizedBox(height: mQuery.size.height*0.24,),
                    Center(
                      child: Text(
                        "By Continuing, you agree to our",
                        style: TextStyle(
                            fontSize: mQuery.size.height*0.02,
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ),

                    SizedBox(
                      height: mQuery.size.height * 0.025,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Terms of services
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Terms of Service",
                              style: TextStyle(
                                  fontSize: mQuery.size.height*0.016,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: 2,
                              width: mQuery.size.width*0.25,
                              color: Colors.white,
                            ),
                          ],
                        ),

                        // privacy policy
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  fontSize: mQuery.size.height*0.016,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: 2,
                              width: mQuery.size.width*0.23,
                              color: Colors.white,
                            ),
                          ],
                        ),

                        // content policies
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text(
                              "Content Policies",
                              style: TextStyle(
                                  fontSize: mQuery.size.height*0.016,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: 2,
                              width: mQuery.size.width*0.25,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),

                    // Divider Row
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}