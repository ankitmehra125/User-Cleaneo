import 'package:cleaneo_user_app/Dashboard/Notifications/rating_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
import 'package:cleaneo_user_app/Help/help_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    var mobileNo = "+91 1234567890";
    var vCode = "CL123456";
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
                            return HomePage();
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
                    "Notifications",
                    style: TextStyle(
                        fontSize: mQuery.size.height*0.027,
                        color: Colors.white,
                        fontFamily: 'SatoshiBold',),
                  ),
                  Expanded(child: SizedBox()),
                  Text("Clear All",style: TextStyle(
                    color: Colors.white,
                      fontFamily: 'SatoshiMedium',
                    fontSize: mQuery.size.height*0.0175
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
                      topRight: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 1,
                      offset:
                      Offset(3, 3), // changes the position of the shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: mQuery.size.height*0.028,
                    left: mQuery.size.width*0.045,
                    right: mQuery.size.width*0.045,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Today",style: TextStyle(
                        color: Colors.black54,
                        fontSize: mQuery.size.height*0.017,
                          fontFamily: 'SatoshiRegular'
                      ),
                      ),
                      SizedBox(height: mQuery.size.height*0.014,),
                      Container(
                        width: double.infinity,
                        height: mQuery.size.height*0.28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 6,
                              offset: Offset(0, 0)
                            )
                          ]
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: mQuery.size.height*0.006,),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: mQuery.size.width*0.033
                                ),
                                child: Row(
                                  children: [
                                    Text("Delivery Successful",style: TextStyle(
                                      color: Color(0xff29b2fe),
                                        fontFamily: 'SatoshiBold',
                                      fontSize: mQuery.size.height*0.018
                                    ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Icon(Icons.delete,color: Colors.black54,)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: mQuery.size.width*0.14,
                                  left: mQuery.size.width*0.033
                                ),
                                child: Text("Your order has been successfully delivered on "
                                    "30th June 2020 at 5:00pm by our rider",
                                style: TextStyle(
                                  fontSize: mQuery.size.height*0.016,
                                    fontFamily: 'SatoshiRegular',
                                ),),
                              ),
                              SizedBox(height: mQuery.size.height*0.01,),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: mQuery.size.width*0.033
                                ),
                                child: Row(
                                  children: [
                                    ProfilePicture(
                                      name: "",
                                      radius: mQuery.size.width*0.046,
                                      fontsize: 10,
                                      img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA3tt2QdkGYJ1268iokp1HHB3XB6PNaAZD_pssz3zFVg&s",
                                    ),
                                    SizedBox(width: mQuery.size.width*0.02,),
                                    Column(
                                      children: [
                                        Text("Raj(ID 123456)",style: TextStyle(
                                          fontSize: mQuery.size.height*0.017,
                                          fontFamily: 'SatoshiMedium',
                                        ),
                                        ),
                                        Text("$mobileNo",style: TextStyle(
                                          fontSize: mQuery.size.height*0.015,
                                          fontFamily: 'SatoshiRegular'
                                        ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: mQuery.size.height*0.012,),
                              Container(
                                width: double.infinity,
                                height: mQuery.size.height*0.087,
                                color: Color(0xfff3fbff),
                                child : SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: mQuery.size.height*0.007,),
                                      Text("Please share your valuable feedback with us.",style: TextStyle(
                                        fontSize: mQuery.size.height*0.016,
                                        fontFamily: 'SatoshiMedium',
                                      ),
                                      ),
                                      SizedBox(height: mQuery.size.height*0.007,),
                                      GestureDetector(
                                        onTap: ()
                                        {
                                          Navigator.push(context, MaterialPageRoute(builder: (context){
                                            return const RatingPage();
                                          }));
                                        },
                                        child: Container(
                                          width: mQuery.size.width*0.25,
                                          height: mQuery.size.height*0.037,
                                          decoration: BoxDecoration(
                                            color: Color(0xff29b2fe),
                                            borderRadius: BorderRadius.circular(4)
                                          ),
                                          child: Center(
                                            child: Text("SUBMIT REVIEW",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: mQuery.size.height*0.0127,
                                              fontFamily: 'SatoshiBold',
                                            ),),
                                          ),
                                        ),
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: mQuery.size.height*0.007,),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: mQuery.size.width*0.033
                                ),
                                child: Row(
                                  children: [
                                    Text("05:05 PM",style: TextStyle(
                                      color: Colors.black54,
                                        fontFamily: 'SatoshiRegular',
                                      fontSize: mQuery.size.height*0.0155
                                    ),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: mQuery.size.height*0.03,),
                      Container(
                        width: double.infinity,
                        height: mQuery.size.height*0.21,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: Offset(0, 0)
                              )
                            ]
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: mQuery.size.height*0.006,),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: mQuery.size.width*0.033
                                ),
                                child: Row(
                                  children: [
                                    Text("Order Ready",style: TextStyle(
                                        color: Color(0xff29b2fe),
                                        fontFamily: 'SatoshiBold',
                                        fontSize: mQuery.size.height*0.018
                                    ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Icon(Icons.delete,color: Colors.black54,)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: mQuery.size.width*0.14,
                                    left: mQuery.size.width*0.033
                                ),
                                child: Text("Your order is ready and will be delivered to you "
                                    "today(30th June 2020) at 5:00pm by our rider",
                                  style: TextStyle(
                                    fontSize: mQuery.size.height*0.016,
                                    fontFamily: 'SatoshiRegular',
                                  ),),
                              ),
                              SizedBox(height: mQuery.size.height*0.01,),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: mQuery.size.width*0.033
                                ),
                                child: Row(
                                  children: [
                                    ProfilePicture(
                                      name: "",
                                      radius: mQuery.size.width*0.046,
                                      fontsize: 10,
                                      img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA3tt2QdkGYJ1268iokp1HHB3XB6PNaAZD_pssz3zFVg&s",
                                    ),
                                    SizedBox(width: mQuery.size.width*0.02,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Raj(ID 123456)",style: TextStyle(
                                                fontSize: mQuery.size.height*0.017,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                            ),
                                            SizedBox(width: mQuery.size.width*0.2,),
                                            Text("Verification Code",style: TextStyle(
                                              fontSize: mQuery.size.height*0.016,
                                              fontFamily: 'SatoshiMedium'
                                            ),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("$mobileNo",style: TextStyle(
                                                fontSize: mQuery.size.height*0.015,
                                                fontFamily: 'SatoshiRegular'
                                            ),
                                            ),
                                            SizedBox(width: mQuery.size.width*0.3,),
                                            Text("$vCode",style: TextStyle(
                                              color: Color(0xff29b2fe),
                                                fontFamily: 'SatoshiMedium',
                                              fontSize: mQuery.size.height*0.016
                                            ),)
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: mQuery.size.height*0.01,),
                              Divider(),

                              Padding(
                                padding: EdgeInsets.only(
                                    left: mQuery.size.width*0.033
                                ),
                                child: Row(
                                  children: [
                                    Text("02:05 PM",style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: 'SatoshiRegular',
                                        fontSize: mQuery.size.height*0.0155
                                    ),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
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
