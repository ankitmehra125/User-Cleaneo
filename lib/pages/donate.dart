import 'package:cleaneo_user_app/pages/Donateslider.dart';
import 'package:cleaneo_user_app/pages/help_page.dart';
import 'package:cleaneo_user_app/pages/home_page.dart';
import 'package:cleaneo_user_app/pages/wash_page.dart';
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
              child: GestureDetector(
                child: Row(
                  children: [
                    InkWell(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
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
                      "Donate",
                      style: TextStyle(
                          fontSize: mQuery.size.height*0.027,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
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
                      SizedBox(height: mQuery.size.height*0.023,),
                      DonateSlider(),
                      SizedBox(height: mQuery.size.height*0.02,),
                      Row(
                        children: [
                          Text(
                            "Donate for a better India",
                            style: TextStyle(
                                fontSize: mQuery.size.height*0.024,
                                fontWeight: FontWeight.w600
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
                                fontSize: mQuery.size.height*0.015,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: mQuery.size.height*0.09,),
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
                            fontWeight: FontWeight.w600
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