import 'package:cleaneo_user_app/Auth/login_page.dart';
import 'package:cleaneo_user_app/Auth/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isPasswordVisible = false;
  bool isPasswordVisible2 = false;

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
                  GestureDetector(
                    onTap:()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return WelcomePage();
                      }));
                    },
                      child: Icon(Icons.arrow_back, color: Colors.white,)),
                  SizedBox(width: mQuery.size.width * 0.045,),
                  Text("Sign Up", style: TextStyle(
                      fontSize: mQuery.size.height*0.027,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  ),)
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
                      left: 16, right: 16, top: 25
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Full Name*", style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: mQuery.size.height*0.02,
                        ),),
                        SizedBox(height: mQuery.size.height * 0.01,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
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
                          child: TextField(
                            cursorColor: Colors.grey,
                            controller: nameController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "Enter Full Name",
                              hintStyle: TextStyle(
                                  fontSize: mQuery.size.height*0.0215,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffABAFB1)
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),


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
                                  keyboardType: TextInputType.number,
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
                                    contentPadding: EdgeInsets.symmetric(vertical: 2),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    counter: SizedBox.shrink(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        SizedBox(height: mQuery.size.height*0.03,),
                        // Email
                        Text("Email", style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: mQuery.size.height*0.02,
                        ),),
                        SizedBox(height: mQuery.size.height * 0.01,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
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
                          child: TextField(
                            cursorColor: Colors.grey,
                            controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "Enter Email",
                              hintStyle: TextStyle(
                                fontSize: mQuery.size.height*0.0215,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffABAFB1),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),


                        SizedBox(height: mQuery.size.height*0.05,),
                        Text("We'll send a one time 4-digit OTP to your phone or email to verify",
                        style: TextStyle(
                            fontSize: mQuery.size.height*0.0175,
                          fontWeight: FontWeight.w600
                        ),),

                        SizedBox(height: mQuery.size.height*0.217,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                            color: Color(0xff29b2fe),
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Center(
                            child: Text("Sign Up",style: TextStyle(
                                fontSize: mQuery.size.height*0.022,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                            ),),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.01,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?",style: TextStyle(
                                fontSize: mQuery.size.height*0.022,
                              fontWeight: FontWeight.w600
                            ),),

                            TextButton(
                              child: Text(
                                "Log In",style: TextStyle(
                                  fontSize: mQuery.size.height*0.022,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff29b2fe)
                              ),
                              ),
                              onPressed: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return LoginPage();
                                }));
                              },
                            )
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
