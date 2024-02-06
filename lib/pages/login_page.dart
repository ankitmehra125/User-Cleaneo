
import 'package:cleaneo_user_app/pages/home_page.dart';
import 'package:cleaneo_user_app/pages/otp_page.dart';
import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.only(top: 45, left: 16, right: 16, bottom: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.white,),
                  SizedBox(width: mQuery.size.width * 0.045,),
                  Text("Log In", style: TextStyle(
                        fontSize: 20,
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 1,
                      offset: Offset(3, 3), // changes the position of the shadow
                    ),
                  ],
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
                            fontWeight: FontWeight.w600
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
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 0),
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
                                  decoration: InputDecoration(
                                    hintText: "Enter Phone Number*",
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffABAFB1),
                                    ),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(vertical: 16),
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
                                  fontSize: 15,
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
                                  fontSize: 15,
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
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),),
                            SizedBox(width: mQuery.size.width*0.02,),
                            Text("Sign Up",style: TextStyle(
                                fontSize: 15,
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
