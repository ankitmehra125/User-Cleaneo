import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class PreviousOrdersPage extends StatefulWidget {
  const PreviousOrdersPage({super.key});

  @override
  State<PreviousOrdersPage> createState() => _PreviousOrdersPageState();
}

class _PreviousOrdersPageState extends State<PreviousOrdersPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    var orderNo = "#1234567890";
    double price = 100.00;
    var rating = 4.5;
    return Scaffold(
      backgroundColor: Colors.white,
     body: Padding(
        padding: EdgeInsets.only(
        left: mQuery.size.width*0.045,
        right: mQuery.size.width*0.045,
      ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(height: mQuery.size.height*0.018,),
          Text("04 Jul 2021 at 8:09 pm",style: TextStyle(
              color: Colors.black54,
              fontSize: mQuery.size.height*0.017
          ),
          ),
          SizedBox(height: mQuery.size.height*0.01,),
          Container(
            width: double.infinity,
            height: mQuery.size.height*0.248,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: mQuery.size.height*0.05,
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.033
                    ),
                    color: Color(0xffe9f7ff),
                    child: Row(
                      children: [
                        Image.asset("assets/images/drawer-images/shopping-bag.png",color: Color(0xff29b2fe),
                          width: mQuery.size.width*0.06,
                        ),
                        SizedBox(width: mQuery.size.width*0.02,),
                        Text("Order $orderNo",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0165
                        ),),
                        Expanded(child: SizedBox()),
                        Text("₹ ${price.toStringAsFixed(2)}",style: TextStyle(
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.01,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width*0.033
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ITEMS",style: TextStyle(
                                color: Colors.black54,
                                fontSize: mQuery.size.height*0.017
                            ),
                            ),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "WASH",style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      ),
                                      TextSpan(
                                          text: " - 01 x Shirts (Woman), 02 x T-Shirts (Men)",style: TextStyle(
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      )
                                    ]
                                )
                            ),
                            SizedBox(height: mQuery.size.height*0.0045,),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "WASH & STREAM IRON",style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      ),
                                      TextSpan(
                                          text: " - 02 x Kurta Designer (Men), 01 x "
                                              "Bed-Sheet Single",style: TextStyle(
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      )
                                    ]
                                )
                            ),
                            SizedBox(height: mQuery.size.height*0.0045,),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "DRY CLEAN",style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      ),
                                      TextSpan(
                                          text: " - 02 x Bath Mate",style: TextStyle(
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      )
                                    ]
                                )
                            ),
                          ],
                        ),
                      ),

                      Divider()
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.033
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: mQuery.size.width*0.18,
                              height: mQuery.size.height*0.03,
                              decoration: BoxDecoration(
                                  color: Color(0xffe5f5e8),
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: Center(
                                child: Text("Delivered",style: TextStyle(
                                    color: Color(0xff009c1a),
                                    fontSize: mQuery.size.height*0.014,
                                    fontWeight: FontWeight.w600
                                ),),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(Icons.star,
                              size: mQuery.size.width*0.05,
                              color: Color(
                              0xff29b2fe
                            ),),
                            SizedBox(width: mQuery.size.width*0.01,),
                            Text("$rating")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: mQuery.size.height*0.023,),
          Text("26 Jun 2021 at 6:00 pm",style: TextStyle(
              color: Colors.black54,
              fontSize: mQuery.size.height*0.017
          ),
          ),
          SizedBox(height: mQuery.size.height*0.01,),
          Container(
            width: double.infinity,
            height: mQuery.size.height*0.248,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: mQuery.size.height*0.05,
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.033
                    ),
                    color: Color(0xffe9f7ff),
                    child: Row(
                      children: [
                        Image.asset("assets/images/drawer-images/shopping-bag.png",color: Color(0xff29b2fe),
                          width: mQuery.size.width*0.06,
                        ),
                        SizedBox(width: mQuery.size.width*0.02,),
                        Text("Order $orderNo",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0165
                        ),),
                        Expanded(child: SizedBox()),
                        Text("₹ ${price.toStringAsFixed(2)}",style: TextStyle(
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.01,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width*0.033
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ITEMS",style: TextStyle(
                                color: Colors.black54,
                                fontSize: mQuery.size.height*0.017
                            ),
                            ),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "WASH",style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      ),
                                      TextSpan(
                                          text: " - 01 x Shirts (Woman), 02 x T-Shirts (Men)",style: TextStyle(
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      )
                                    ]
                                )
                            ),
                            SizedBox(height: mQuery.size.height*0.0045,),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "WASH & STREAM IRON",style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      ),
                                      TextSpan(
                                          text: " - 02 x Kurta Designer (Men), 01 x "
                                              "Bed-Sheet Single",style: TextStyle(
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      )
                                    ]
                                )
                            ),
                            SizedBox(height: mQuery.size.height*0.0045,),
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "DRY CLEAN",style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      ),
                                      TextSpan(
                                          text: " - 02 x Bath Mate",style: TextStyle(
                                          fontSize: mQuery.size.height*0.0155
                                      )
                                      )
                                    ]
                                )
                            ),
                          ],
                        ),
                      ),

                      Divider()
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.033
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: mQuery.size.width*0.18,
                              height: mQuery.size.height*0.03,
                              decoration: BoxDecoration(
                                  color: Color(0xffe5f5e8),
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: Center(
                                child: Text("Delivered",style: TextStyle(
                                    color: Color(0xff009c1a),
                                    fontSize: mQuery.size.height*0.014,
                                    fontWeight: FontWeight.w600
                                ),),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Text("SUBMIT REVIEW",style: TextStyle(
                              color: Color(0xff29b2fe),
                              fontWeight: FontWeight.w600,
                              fontSize: mQuery.size.height*0.014
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


       ]
     ),
    )
    );
  }
}
