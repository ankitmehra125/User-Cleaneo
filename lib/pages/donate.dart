import 'package:cleaneo_user_app/pages/Donateslider.dart';
import 'package:cleaneo_user_app/Help/help_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wash/wash_page.dart';
import 'package:cleaneo_user_app/pages/mydrawer.dart';
import 'package:flutter/material.dart';

class Donate extends StatefulWidget {
  final List<String> imageAssetPaths = [
    'assets/images/flag.jpg',
    'assets/images/flag.jpg',
    'assets/images/flag.jpg',
    'assets/images/flag.jpg',
    'assets/images/flag.jpg',
    'assets/images/flag.jpg',
  ];

  Donate({Key? key}) : super(key: key);

  @override
  State<Donate> createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006acb),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding:  EdgeInsets.only(
                  top: mQuery.size.height*0.056,
                   left: mQuery.size.width*0.045,
                   right: mQuery.size.width*0.045,
                   bottom: mQuery.size.height*0.036),
              child: GestureDetector(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                      child: Icon(Icons.menu, color: Colors.white,
                        size: mQuery.size.height*0.04,),
                    ),
                    SizedBox(
                      width: mQuery.size.width * 0.045,
                    ),
                    Text(
                      "Donate",
                      style: TextStyle(
                          fontSize: mQuery.size.height*0.027,
                          color: Colors.white,
                          fontFamily: 'SatoshiBold'
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16),
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
                child: SingleChildScrollView(
                  child:   Column(
                    children: [
                      SizedBox(height: mQuery.size.height*0.015,),
                      DonateSlider(),
                      SizedBox(height: mQuery.size.height*0.014,),
                      Row(
                        children: [
                          Text(
                            "Donate for a better India",
                            style: TextStyle(
                                fontSize: mQuery.size.height*0.024,
                                fontFamily: 'SatoshiMedium'
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mQuery.size.height*0.02,),
                      Row(
                        children: [
                          Container(
                            width: mQuery.size.width*0.9,
                            child: Text(
                              "Welcome to Donete, your gateway to impactful giving! Discover a diverse array of causes, from education to environmental conservation, all within our intuitive and secure platform. Easily track the real-time impact of your donations, connect with like-minded individuals, and engage in dynamic fundraising campaigns. Donete is more than a donation platform; it's a community fostering positive change. Join us today and make a lasting impact on the causes that matter most to you!",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color(0xff6d6e73),
                                fontSize: mQuery.size.height*0.016,
                                fontFamily: 'SatoshiRegular'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mQuery.size.height*0.018,),
                      ElevatedButton(
                        onPressed: ()
                        {
                          print('Button Pressed!');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF009C1A),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          elevation: 0,
                          minimumSize: Size(400.0, 50.0),
                        ),
                        child: Text('Donate',style: TextStyle(
                            fontSize: mQuery.size.height*0.023,
                            fontFamily: 'SatoshiBold'
                        ),),
                      ),
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