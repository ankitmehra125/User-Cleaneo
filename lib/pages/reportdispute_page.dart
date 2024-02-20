import 'package:cleaneo_user_app/Help/aboutus_page.dart';
import 'package:cleaneo_user_app/Help/customer_service_page.dart';
import 'package:cleaneo_user_app/Help/faqs_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
import 'package:cleaneo_user_app/Help/privacypolicy_page.dart';
import 'package:cleaneo_user_app/Help/termsandcondition_page.dart';
import 'package:cleaneo_user_app/pages/rating_page.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


class ReportDisputePage extends StatefulWidget {
  const ReportDisputePage({Key? key}) : super(key: key);

  @override
  State<ReportDisputePage> createState() => _ReportDisputePageState();
}

class _ReportDisputePageState extends State<ReportDisputePage> {

  TextEditingController issueController = TextEditingController();

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;

  bool isOn = false;

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
                      onTap: ()
                      {    Navigator.push(context,MaterialPageRoute(builder: (context){
                        return RatingPage();
                      }));
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white,)),
                  SizedBox(width: mQuery.size.width * 0.045,),
                  Text("Report Dispute", style: TextStyle(
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 1,
                      offset: Offset(0,0),
                    ),
                  ],
                ),
                child: Padding(
                  padding : EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQuery.size.height * 0.037,),
                        Container(
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
                            children: [
                             Checkbox(
                               activeColor: Color(0xff29b2fe),
                               value: isChecked1,
                               onChanged: (value)
                               {
                                 setState(() {
                                   isChecked1 = value!;
                                 });
                               },
                             ),
                              Text("Clothes Missing",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: mQuery.size.height*0.019
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(height: mQuery.size.height * 0.023,),
                        Container(
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
                            children: [
                              Checkbox(
                                activeColor: Color(0xff29b2fe),
                                value: isChecked2,
                                onChanged: (value)
                                {
                                  setState(() {
                                    isChecked2 = value!;
                                  });
                                },
                              ),
                              Text("Inappropriate behaviour",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: mQuery.size.height*0.019
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(height: mQuery.size.height * 0.023,),
                        Container(
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
                            children: [
                              Checkbox(
                                activeColor: Color(0xff29b2fe),
                                value: isChecked3,
                                onChanged: (value)
                                {
                                  setState(() {
                                    isChecked3 = value!;
                                  });
                                },
                              ),
                              Text("Lorem Ipsum is a dummy text",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: mQuery.size.height*0.019
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(height: mQuery.size.height * 0.023,),
                        Container(
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
                            children: [
                              Checkbox(
                                activeColor: Color(0xff29b2fe),
                                value: isChecked4,
                                onChanged: (value)
                                {
                                  setState(() {
                                    isChecked4 = value!;
                                  });
                                },
                              ),
                              Text("Lorem Ipsum is a dummy text",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: mQuery.size.height*0.019
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(height: mQuery.size.height * 0.023,),
                        Container(
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
                            children: [
                              Checkbox(
                                activeColor: Color(0xff29b2fe),
                                value: isChecked5,
                                onChanged: (value)
                                {
                                  setState(() {
                                    isChecked5 = value!;
                                  });
                                },
                              ),
                              Text("Lorem Ipsum is a dummy text",style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: mQuery.size.height*0.019
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.03,),
                        Text("Any other dispute/ message?",
                          style: TextStyle(
                            fontSize: mQuery.size.height*0.02,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.023,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height*0.135,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.3,
                                blurRadius: 10,
                                offset: Offset(0,0), // changes the position of the shadow
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: issueController,
                            cursorColor: Colors.black54,
                            maxLines: null,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write your issue here",
                                hintStyle: TextStyle(
                                    fontSize: mQuery.size.height*0.02,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54
                                ),
                                contentPadding: EdgeInsets.symmetric(horizontal: 8)
                            ),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.027,),
                        Text("Upload Pictures",style: TextStyle(
                            fontSize: mQuery.size.height*0.02,
                            fontWeight: FontWeight.w900
                        ),
                        ),
                        SizedBox(height: mQuery.size.height*0.023,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DottedBorder(
                              color: Colors.black54,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              child: Container(
                                width: mQuery.size.width*0.17,
                                height: mQuery.size.height*0.08,
                                child: Center(
                                  child: Icon(Icons.add,
                                   color: Colors.black54,
                                   size: mQuery.size.width*0.07,
                                    opticalSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            DottedBorder(
                              color: Colors.black54,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              child: Container(
                                width: mQuery.size.width*0.17,
                                height: mQuery.size.height*0.08,
                                child: Center(
                                  child: Icon(Icons.add,
                                    color: Colors.black54,
                                    size: mQuery.size.width*0.07,
                                    opticalSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            DottedBorder(
                              color: Colors.black54,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              child: Container(
                                width: mQuery.size.width*0.17,
                                height: mQuery.size.height*0.08,
                                child: Center(
                                  child: Icon(Icons.add,
                                    color: Colors.black54,
                                    size: mQuery.size.width*0.07,
                                    opticalSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            DottedBorder(
                              color: Colors.black54,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              child: Container(
                                width: mQuery.size.width*0.17,
                                height: mQuery.size.height*0.08,
                                child: Center(
                                  child: Icon(Icons.add,
                                    color: Colors.black54,
                                    size: mQuery.size.width*0.07,
                                    opticalSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.045
              ),
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.06,
                decoration: BoxDecoration(
                  color: Color(0xff29b2fe),
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Center(
                  child: Text("Submit",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: mQuery.size.height*0.023
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



