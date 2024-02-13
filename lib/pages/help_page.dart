import 'package:cleaneo_user_app/pages/aboutus_page.dart';
import 'package:cleaneo_user_app/pages/customer_service_page.dart';
import 'package:cleaneo_user_app/pages/faqs_page.dart';
import 'package:cleaneo_user_app/pages/home_page.dart';
import 'package:cleaneo_user_app/pages/privacypolicy_page.dart';
import 'package:cleaneo_user_app/pages/termsandcondition_page.dart';
import 'package:flutter/material.dart';


class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {


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
              padding: const EdgeInsets.only(
                  top: 45, left: 16, right: 16, bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: ()
                      {    Navigator.push(context,MaterialPageRoute(builder: (context){
                          return HomePage();
                        }));
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white,)),
                  SizedBox(width: mQuery.size.width * 0.045,),
                  Text("Help", style: TextStyle(
                      fontSize: 20,
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 1,
                      offset: Offset(0,0), // changes the position of the shadow
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
                        SizedBox(height: mQuery.size.height * 0.037,),
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return AboutusPage();
                            }));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            width: double.infinity,
                            height: mQuery.size.height * 0.05,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(child: Text("About Us",style: TextStyle(
                                  fontWeight: FontWeight.w600
                                ),)),
                                Icon(Icons.navigate_next)
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: mQuery.size.height * 0.023,),
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return PrivacyPolicyPage();
                            }));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            width: double.infinity,
                            height: mQuery.size.height * 0.05,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(child: Text("Privacy Policy",style: TextStyle(
                                    fontWeight: FontWeight.w600
                                ),)),
                                Icon(Icons.navigate_next)
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: mQuery.size.height * 0.023,),
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return TermsAndConditionPage();
                            }));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            width: double.infinity,
                            height: mQuery.size.height * 0.05,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(child: Text("Terms & Conditions",style: TextStyle(
                                    fontWeight: FontWeight.w600
                                ),)),
                                Icon(Icons.navigate_next)
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: mQuery.size.height * 0.023,),
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return FAQSPage();
                            }));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            width: double.infinity,
                            height: mQuery.size.height * 0.05,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(child: Text("FAQs",style: TextStyle(
                                    fontWeight: FontWeight.w600
                                ),)),
                                Icon(Icons.navigate_next)
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: mQuery.size.height * 0.023,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          width: double.infinity,
                          height: mQuery.size.height * 0.05,
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
                          child: InkWell(
                            onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return CustomerServicePage();
                              }));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(child: Text("Customer Service",style: TextStyle(
                                    fontWeight: FontWeight.w600
                                ),)),
                                Icon(Icons.navigate_next)
                              ],
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



