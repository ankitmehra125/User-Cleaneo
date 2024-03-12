import 'package:cleaneo_user_app/Welcome/TS_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class OngoingOrdersPage extends StatefulWidget {
  const OngoingOrdersPage({super.key});

  @override
  State<OngoingOrdersPage> createState() => _OngoingOrdersPageState();
}

class _OngoingOrdersPageState extends State<OngoingOrdersPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    var orderNo = "#1234567890";
    double price = 100.00;
    var phoneNo = "+91 1234567890";
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
             Text("Today",style: TextStyle(
                 color: Colors.black54,
                 fontFamily: 'SatoshiRegular',
                 fontSize: mQuery.size.height*0.017
             ),
             ),
             SizedBox(height: mQuery.size.height*0.01,),
             Container(
               width: double.infinity,
               height: mQuery.size.height*0.29,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                width: double.infinity,
                height: mQuery.size.height*0.05,
                padding: EdgeInsets.symmetric(horizontal: mQuery.size.width*0.033),
                  color: Color(0xffe9f7ff),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/drawer-images/shopping-bag.png",color: Color(0xff29b2fe),
                            width: mQuery.size.width*0.06,
                          ),
                          SizedBox(width: mQuery.size.width*0.02,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order $orderNo",style: TextStyle(
                                  fontFamily: 'SatoshiMedium',
                                  fontSize: mQuery.size.height*0.0165
                              ),),
                              Text("Order Type : Online Paid",style: TextStyle(
                                  fontFamily: 'SatoshiRegular',
                                  fontSize: mQuery.size.height*0.013
                              ),)
                            ],
                          ),
                          Expanded(child: SizedBox()),
                          Text("₹ ${price.toStringAsFixed(2)}",style: TextStyle(
                              fontFamily: 'SatoshiMedium',
                              fontSize: mQuery.size.height*0.017
                          ),),

                        ],
                      ),

                    ],
                  ),
                ),
                  SizedBox(height: mQuery.size.height*0.01,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.033
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ITEMS",style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'SatoshiRegular',
                            fontSize: mQuery.size.height*0.016
                        ),
                        ),
                        Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(
                                      text: "WASH",style: TextStyle(
                                      fontFamily: 'SatoshiMedium',
                                      color: Colors.black,
                                      fontSize: mQuery.size.height*0.0155
                                  )
                                  ),
                                  TextSpan(
                                      text: " - 01 x Shirts (Woman), 02 x T-Shirts (Men)",style: TextStyle(
                                      fontSize: mQuery.size.height*0.0155,
                                      fontFamily: 'SatoshiRegular'
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
                                      fontFamily: 'SatoshiMedium',
                                      color: Colors.black,
                                      fontSize: mQuery.size.height*0.0155
                                  )
                                  ),
                                  TextSpan(
                                      text: " - 02 x Kurta Designer (Men), 01 x "
                                          "Bed-Sheet Single",style: TextStyle(
                                      fontSize: mQuery.size.height*0.0155,
                                      fontFamily: 'SatoshiRegular'
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
                                      fontFamily: 'SatoshiMedium',
                                      color: Colors.black,
                                      fontSize: mQuery.size.height*0.0155
                                  )
                                  ),
                                  TextSpan(
                                      text: " - 02 x Bath Mate",style: TextStyle(
                                      fontSize: mQuery.size.height*0.0155,
                                      fontFamily: 'SatoshiRegular'
                                  )
                                  )
                                ]
                            )
                        ),

                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.033
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rider Details",style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'SatoshiRegular',
                            fontSize: mQuery.size.height*0.017
                        ),
                        ),
                        Row(
                          children: [
                            ProfilePicture(
                              name: "",
                              radius: mQuery.size.width*0.046,
                              fontsize: 10,
                              img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA3tt2QdkGYJ1268iokp1HHB3XB6PNaAZD_pssz3zFVg&s",
                            ),
                            SizedBox(width: mQuery.size.width*0.015,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Raj(ID 123456)",style: TextStyle(
                                    fontSize: mQuery.size.height*0.017,
                                    fontFamily: 'SatoshiMedium'
                                ),
                                ),
                                Text("$phoneNo",style: TextStyle(
                                    fontSize: mQuery.size.height*0.015,
                                    fontFamily: 'SatoshiRegular'
                                ),
                                ),
                              ],
                            ),
                            Expanded(child: SizedBox()),
                            Column(
                              children: [
                                Container(
                                  width: mQuery.size.width*0.18,
                                  height: mQuery.size.height*0.03,
                                  decoration: BoxDecoration(
                                      color: Color(0xffffeced),
                                      borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: Center(
                                    child: Text("Picked Up",style: TextStyle(
                                      color: Colors.red,
                                      fontSize: mQuery.size.height*0.014,
                                      fontFamily: 'SatoshiMedium',
                                    ),),
                                  ),
                                ),
                                Text("Track Order",style: TextStyle(
                                    color: Color(0xff29b2fe),
                                    fontSize: mQuery.size.height*0.017,
                                    fontFamily: 'SatoshiRegular'
                                ),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
             ),

             SizedBox(height: mQuery.size.height*0.023   ,),
             Text("26 Jun 2021 at 6:00 pm",style: TextStyle(
                 color: Colors.black54,
                 fontFamily: 'SatoshiRegular',
                 fontSize: mQuery.size.height*0.017
             ),
             ),
             SizedBox(height: mQuery.size.height*0.01,),
             Container(
               width: double.infinity,
               height: mQuery.size.height*0.29,
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
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     width: double.infinity,
                     height: mQuery.size.height*0.05,
                     padding: EdgeInsets.symmetric(horizontal: mQuery.size.width*0.033),
                     color: Color(0xffe9f7ff),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             Image.asset("assets/images/drawer-images/shopping-bag.png",color: Color(0xff29b2fe),
                               width: mQuery.size.width*0.06,
                             ),
                             SizedBox(width: mQuery.size.width*0.02,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Order $orderNo",style: TextStyle(
                                     fontFamily: 'SatoshiMedium',
                                     fontSize: mQuery.size.height*0.0165
                                 ),),
                                 Text("Order Type : Cash On Delivery",style: TextStyle(
                                   fontFamily: 'SatoshiRegular',
                                     fontSize: mQuery.size.height*0.013
                                 ),)
                               ],
                             ),
                             Expanded(child: SizedBox()),
                             Text("₹ ${price.toStringAsFixed(2)}",style: TextStyle(
                                 fontFamily: 'SatoshiMedium',
                                 fontSize: mQuery.size.height*0.017
                             ),)
                           ],
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: mQuery.size.height*0.01,),
                   Padding(
                     padding: EdgeInsets.symmetric(
                         horizontal: mQuery.size.width*0.033
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("ITEMS",style: TextStyle(
                             color: Colors.black54,
                             fontFamily: 'SatoshiRegular',
                             fontSize: mQuery.size.height*0.016
                         ),
                         ),
                         Text.rich(
                             TextSpan(
                                 children: [
                                   TextSpan(
                                       text: "WASH",style: TextStyle(
                                       fontFamily: 'SatoshiMedium',
                                       color: Colors.black,
                                       fontSize: mQuery.size.height*0.0155
                                   )
                                   ),
                                   TextSpan(
                                       text: " - 01 x Shirts (Woman), 02 x T-Shirts (Men)",style: TextStyle(
                                       fontSize: mQuery.size.height*0.0155,
                                       fontFamily: 'SatoshiRegular'
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
                                       fontFamily: 'SatoshiMedium',
                                       color: Colors.black,
                                       fontSize: mQuery.size.height*0.0155
                                   )
                                   ),
                                   TextSpan(
                                       text: " - 02 x Kurta Designer (Men), 01 x "
                                           "Bed-Sheet Single",style: TextStyle(
                                       fontSize: mQuery.size.height*0.0155,
                                       fontFamily: 'SatoshiRegular'
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
                                       fontFamily: 'SatoshiMedium',
                                       color: Colors.black,
                                       fontSize: mQuery.size.height*0.0155
                                   )
                                   ),
                                   TextSpan(
                                       text: " - 02 x Bath Mate",style: TextStyle(
                                       fontSize: mQuery.size.height*0.0155,
                                       fontFamily: 'SatoshiRegular'
                                   )
                                   )
                                 ]
                             )
                         ),

                       ],
                     ),
                   ),
                   Divider(),
                   Padding(
                     padding: EdgeInsets.symmetric(
                         horizontal: mQuery.size.width*0.033
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Rider Details",style: TextStyle(
                             color: Colors.black54,
                             fontFamily: 'SatoshiRegular',
                             fontSize: mQuery.size.height*0.017
                         ),
                         ),
                         Row(
                           children: [
                             ProfilePicture(
                               name: "",
                               radius: mQuery.size.width*0.046,
                               fontsize: 10,
                               img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA3tt2QdkGYJ1268iokp1HHB3XB6PNaAZD_pssz3zFVg&s",
                             ),
                             SizedBox(width: mQuery.size.width*0.015,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Raj(ID 123456)",style: TextStyle(
                                     fontSize: mQuery.size.height*0.017,
                                     fontFamily: 'SatoshiMedium'
                                 ),
                                 ),
                                 Text("$phoneNo",style: TextStyle(
                                     fontSize: mQuery.size.height*0.015,
                                     fontFamily: 'SatoshiRegular'
                                 ),
                                 ),
                               ],
                             ),
                             Expanded(child: SizedBox()),
                             Column(
                               children: [
                                 Container(
                                   width: mQuery.size.width*0.18,
                                   height: mQuery.size.height*0.03,
                                   decoration: BoxDecoration(
                                       color: Color(0xffe9f7ff),
                                       borderRadius: BorderRadius.circular(16)
                                   ),
                                   child: Center(
                                     child: Text("In Process",style: TextStyle(
                                       color: Color(0xff29b2fe),
                                       fontSize: mQuery.size.height*0.014,
                                       fontFamily: 'SatoshiMedium',
                                     ),),
                                   ),
                                 ),
                                 Text("Track Order",style: TextStyle(
                                     color: Color(0xff29b2fe),
                                     fontSize: mQuery.size.height*0.017,
                                     fontFamily: 'SatoshiRegular'
                                 ),)
                               ],
                             )
                           ],
                         )
                       ],
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
    );
  }
}


