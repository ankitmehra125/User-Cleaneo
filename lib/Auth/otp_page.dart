import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:cleaneo_user_app/Auth/login_page.dart';
import 'package:cleaneo_user_app/Help/help_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
import 'package:cleaneo_user_app/pages/map_page.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  int focusedIndex = -1;
  var phoneNo = "+91 9793878788";

  @override
  void initState() {
    super.initState();
    controllers = List.generate(4, (_) => TextEditingController());
    focusNodes = List.generate(4, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    final defaultPinTheme = PinTheme(
      width: mQuery.size.width * 0.23,
      height: mQuery.size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.45),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 0), // changes the position of the shadow
          ),
        ],
      ),
      textStyle: TextStyle(
        fontSize: mQuery.size.height*0.04,
        fontFamily: 'SatoshiBold'
      )
    );
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006acb),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height*0.058,
                bottom: mQuery.size.height*0.03,
                left: mQuery.size.width*0.045,
                right: mQuery.size.width*0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.045,
                  ),
                  Text(
                    "Verify Phone Number",
                    style: TextStyle(
                        fontSize: mQuery.size.height*0.027,
                        color: Colors.white,
                        fontFamily: 'SatoshiBold'),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Enter 4 Digit Code",
                          style: TextStyle(
                              fontSize: mQuery.size.height*0.0215,
                              fontFamily: 'SatoshiBold'),
                        ),
                        SizedBox(height: mQuery.size.height * 0.006),
                        Text(
                          "Sent to $phoneNo",
                          style: TextStyle(
                              fontSize: mQuery.size.height*0.018,
                              fontFamily: 'SatoshiRegular',
                              color: Colors.black87),
                        ),
                        SizedBox(height: mQuery.size.height * 0.04),
                        Pinput(
                          length: 4,
                          defaultPinTheme: defaultPinTheme,
                        ),
                        SizedBox(height: mQuery.size.height * 0.1),
                        Text(
                          "Problems receiving the code?",
                          style: TextStyle(
                              fontSize: mQuery.size.height*0.018,
                              fontFamily: 'SatoshiBold'),
                        ),
                        SizedBox(height: mQuery.size.height * 0.008),
                        Row(
                          children: [
                            Icon(
                              Icons.refresh,
                              color: Color(0xff29b2fe),
                            ),
                            SizedBox(width: mQuery.size.width * 0.015),
                            Text(
                              "RESEND",
                              style: TextStyle(
                                  color: Color(0xff29b2fe),
                                  fontSize: mQuery.size.height*0.018,
                                  fontFamily: 'SatoshiBold'),
                            )
                          ],
                        ),
                        SizedBox(height: mQuery.size.height * 0.35),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return MapPage();
                                }));
                          },
                          child: Container(
                            width: double.infinity,
                            height: mQuery.size.height * 0.06,
                            decoration: BoxDecoration(
                                color: Color(0xff29b2fe),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                              child: Text(
                                "Verify",
                                style: TextStyle(
                                    fontSize: mQuery.size.height*0.02,
                                    color: Colors.white,
                                    fontFamily: 'SatoshiBold'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OTPBox extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isFocused;

  OTPBox({required this.controller, required this.focusNode, required this.isFocused});

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Container(
      width: mQuery.size.width * 0.18,
      height: mQuery.size.width * 0.63,
      child: TextField(
        style: TextStyle(
          fontSize: 30
        ),
        controller: controller,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none
          ),
        ),
      ),
    );
  }
}
