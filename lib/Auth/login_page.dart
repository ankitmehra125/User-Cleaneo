
import 'package:cleaneo_user_app/Auth/welcome_page.dart';
import 'package:cleaneo_user_app/Auth/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:country_code_picker/country_code_picker.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phonenoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  PhoneNumber? phoneNumber;
  String selectedCountryCode = 'IN';

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
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
                      onTap:()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return WelcomePage();
                        }));
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white,)),
                  SizedBox(width: mQuery.size.width * 0.045,),
                  Text("Log In", style: TextStyle(
                      fontSize: mQuery.size.height*0.027,
                        color: Colors.white,
                        fontWeight: FontWeight.w700
                    ),),
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
                      topRight: Radius.circular(16)
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQuery.size.height*0.03,),
                        // PHONE NUMBER
                        Text("Phone Number*", style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: mQuery.size.height*0.02,
                        ),),
                        SizedBox(height: mQuery.size.height * 0.01,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.066,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: Offset(0, 0), // changes the position of the shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: mQuery.size.width * 0.03),
                              Icon(Icons.phone_outlined),
                              CountryCodePicker(
                                onChanged: (code) {
                                  setState(() {
                                    selectedCountryCode = code.dialCode!;
                                  });
                                },
                                initialSelection: 'IN',
                                favorite: ['+91', 'IN'],
                                showCountryOnly: false,
                                showFlag: true,
                                showOnlyCountryWhenClosed: false,
                                alignLeft: false,
                              ),
                              // "|" symbol
                              SizedBox(
                                height: mQuery.size.height*0.03,
                                child: VerticalDivider(
                                  thickness: 1.5,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: mQuery.size.width*0.02),
                              // Phone number input
                              Expanded(
                                child: TextField(
                                  keyboardType: TextInputType.phone,
                                  cursorColor: Colors.grey,
                                  controller: phonenoController,
                                  maxLength: 10,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly // Allow only numeric input
                                  ],
                                  decoration: InputDecoration(
                                    hintText: "Enter Phone Number*",
                                    hintStyle: TextStyle(
                                      fontSize: mQuery.size.height*0.0215,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffABAFB1),
                                    ),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(vertical: 2),
                                    counter: SizedBox.shrink()
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: ()
                              {

                              },
                              child: Text("Forgot Password?",style: TextStyle(
                                  fontSize: mQuery.size.height*0.02,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff29b2fe)
                              ),),
                            ),
                          ],
                        ),

                        SizedBox(height: mQuery.size.height*0.49,),
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return OTPPage();
                            }));
                          },
                          child: Container(
                            width: double.infinity,
                            height: mQuery.size.height*0.06,
                            decoration: BoxDecoration(
                                color: Color(0xff29b2fe),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text("Log In",style: TextStyle(
                                  fontSize: mQuery.size.height*0.022,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                              ),),
                            ),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.034,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",style: TextStyle(
                                fontSize: mQuery.size.height*0.022,
                                fontWeight: FontWeight.w600
                            ),),
                            SizedBox(width: mQuery.size.width*0.02,),
                            Text("Sign Up",style: TextStyle(
                                fontSize: mQuery.size.height*0.022,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff29b2fe)
                            ),)
                          ],
                        )
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

