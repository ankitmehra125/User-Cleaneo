import 'package:cleaneo_user_app/Help/help_page.dart';
import 'package:cleaneo_user_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
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
              child: GestureDetector(
                child: Row(
                  children: [
                    InkWell(
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
                      "My Addresses",
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Container(
                              width: mQuery.size.width * 0.04,
                              height: mQuery.size.height * 0.05,
                              decoration: BoxDecoration(
                                  color: Color(0xff29b2fe),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Icon(Icons.add,
                                    color: Colors.white, size: 15),
                              ),
                            ),
                            SizedBox(width: mQuery.size.width*0.02,),
                            Text("Add Address",style: TextStyle(
                              fontSize: mQuery.size.height*0.0195,
                              fontWeight: FontWeight.w700
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: mQuery.size.height*0.02,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: mQuery.size.height*0.23,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0.2,
                                    blurRadius: 7,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ),
            Container(
              width: double.infinity,
              height: mQuery.size.height*0.06,
              color: Colors.white,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: mQuery.size.width*0.045
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Center(
                  child: Text("Save Address",
                   style: TextStyle(
                     fontSize: mQuery.size.height*0.022,
                     color: Colors.white,
                     fontWeight: FontWeight.w600
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
