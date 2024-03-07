import 'package:cleaneo_user_app/Dashboard/Wash/Select%20Vendor/vendorDetails_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wash/wash_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
import 'package:flutter/material.dart';

class ChooseVendorPage extends StatefulWidget {
  const ChooseVendorPage({Key? key}) : super(key: key);

  @override
  State<ChooseVendorPage> createState() => _ChooseVendorPageState();
}

class _ChooseVendorPageState extends State<ChooseVendorPage> {
  List<Map<String, dynamic>> vendors = [
    {
      'name': 'Fresh Bubbles Laundry',
      'image': 'https://t3.ftcdn.net/jpg/04/27/57/28/360_F_427572855_RhQYKzH4mAzkzIYhnGngBA4h4x5kUwnm.jpg',
      'location': '123 Main Street, Anytown, USA 12345',
      'acceptIn': '30 mins',
      'ownerName': 'Mr. John Doe',
      'contactNo': '+91-9876543210',
      'rating': 4.5,
      'distance': 4.2,
    },
    {
      'name': 'Sparkle Cleaners',
      'image': 'https://www.sparklecleaners.com/wp-content/uploads/2021/12/sparkle-logo.jpg',
      'location': '456 Elm Street, Sometown, USA 56789',
      'acceptIn': '45 mins',
      'ownerName': 'Ms. Jane Smith',
      'contactNo': '+91-9876543211',
      'rating': 4.8,
      'distance': 3.5,
    },
    {
      'name': 'Shiny Washers',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQGJtl8W18dHWfa8c0g8DEt35z67KnJXwJFHgzO5-Jm-iyHwsZGTL6zsCJFX3MckHhct0&usqp=CAU',
      'location': '789 Oak Avenue, Othertown, USA 34567',
      'acceptIn': '20 mins',
      'ownerName': 'Mr. Bob Johnson',
      'contactNo': '+91-9876543212',
      'rating': 4.2,
      'distance': 5.0,
    },
  ];

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
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height * 0.058,
                bottom: mQuery.size.height * 0.03,
                left: mQuery.size.width * 0.045,
                right: mQuery.size.width * 0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
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
                    "Choose Vendor",
                    style: TextStyle(
                      fontSize: mQuery.size.height * 0.027,
                      color: Colors.white,
                      fontFamily: 'SatoshiBold',
                    ),
                  )
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
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: mQuery.size.width * 0.045,
                    right: mQuery.size.width * 0.045,
                  ),
                  child: ListView.builder(
                    itemCount: vendors.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: mQuery.size.width*0.66
                                    ),
                                    height: mQuery.size.height * 0.04,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(color: Color(0xff29b2fe)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Show All",
                                        style: TextStyle(
                                          color: Color(0xff29b2fe),
                                          fontSize: mQuery.size.height * 0.017,
                                          fontFamily: 'SatoshiBold',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: mQuery.size.height*0.036,)
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                      var vendor = vendors[index - 1];
                      return Container(
                        margin: EdgeInsets.only(bottom: mQuery.size.height * 0.036),
                        width: double.infinity,
                        height: mQuery.size.height * 0.28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Color(0xffe9f8ff),
                                width: double.infinity,
                                height: mQuery.size.height * 0.06,
                                padding: EdgeInsets.symmetric(
                                  horizontal: mQuery.size.width * 0.032,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: mQuery.size.width * 0.1,
                                      height: mQuery.size.height * 0.045,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(vendor['image']),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.02),
                                    Text(
                                      vendor['name'],
                                      style: TextStyle(
                                        fontSize: mQuery.size.height * 0.016,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Icon(
                                      Icons.star,
                                      size: mQuery.size.width * 0.047,
                                      color: Color(0xff29b2fe),
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.01),
                                    Text(
                                      "${vendor['rating']}",
                                      style: TextStyle(
                                        fontFamily: 'SatoshiBold'
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: mQuery.size.height * 0.01),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: mQuery.size.width * 0.032,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Location",
                                          style: TextStyle(
                                            fontSize: mQuery.size.height * 0.0172,
                                            fontFamily: 'SatoshiMedium',
                                            color: Colors.black54,
                                          ),
                                        ),
                                        Text(
                                          "Accept in",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: mQuery.size.width * 0.05,
                                          height: mQuery.size.height * 0.035,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff29b2fe)),
                                          child: Center(
                                            child: Icon(
                                              Icons.home,
                                              color: Colors.white,
                                              size: mQuery.size.width * 0.03,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: mQuery.size.width * 0.02),
                                        Text(
                                          vendor['location'],
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.013,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text(
                                          "${vendor['distance']} KM",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.015,
                                              fontFamily: 'SatoshiMedium'),
                                        )
                                      ],
                                    ),
                                    Divider(),
                                    SizedBox(height: mQuery.size.height * 0.006),
                                    Row(
                                      children: [
                                        Text(
                                          "Owner Name",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.0172,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text(
                                          "Contact No",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: mQuery.size.height * 0.016,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.007),
                                    Row(
                                      children: [
                                        Text(
                                          vendor['ownerName'],
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.015,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Text(
                                          vendor['contactNo'],
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.015,
                                              fontFamily: 'SatoshiMedium'),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: mQuery.size.height * 0.02),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap : ()
                                      {
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return VendorDetailsPage();
                                        }));
                                      },
                                      child: Container(
                                        height: mQuery.size.height * 0.045,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(6)),
                                            color: Color(0xff004c90)),
                                        child: Center(
                                          child: Text(
                                            "View Details",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: mQuery.size.height * 0.018,
                                                fontFamily: 'SatoshiBold'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: ()
                                      {
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return WashPage();
                                        }));
                                      },
                                      child: Container(
                                        height: mQuery.size.height * 0.045,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(6)),
                                            color: Color(0xff29b2fe)),
                                        child: Center(
                                          child: Text(
                                            "Proceed",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: mQuery.size.height * 0.018,
                                                fontFamily: 'SatoshiBold'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
