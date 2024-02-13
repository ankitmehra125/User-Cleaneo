import 'package:flutter/material.dart';

import 'aboutus_page.dart';
import 'customer_service_page.dart';
import 'faqs_page.dart';
import 'home_page.dart';
import 'privacypolicy_page.dart';
import 'termsandcondition_page.dart';

class DryCleanPage extends StatefulWidget {
  const DryCleanPage({Key? key}) : super(key: key);

  @override
  State<DryCleanPage> createState() => _DryCleanPageState();
}

class _DryCleanPageState extends State<DryCleanPage> {
  bool _isDropdownOpen = false;
  int _selectedRowIndex = -1;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff006acb),
            ),
            child: Column(
              children: [
                SizedBox(height: mQuery.size.height * 0.034),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 45,
                    left: 16,
                    right: 16,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      SizedBox(width: mQuery.size.width * 0.045),
                      Text(
                        "Dry Clean",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: mQuery.size.width * 0.02),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isDropdownOpen = !_isDropdownOpen;
                          });
                        },
                        child: Icon(Icons.arrow_drop_down, color: Colors.white),
                      ),
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
                          offset: Offset(3, 3), // changes the position of the shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: mQuery.size.height * 0.037),
                            Container(
                              height: mQuery.size.height * 0.06,
                              padding: const EdgeInsets.only(left: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: TextField(
                                cursorColor: Colors.grey,
                                controller: searchController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  suffixIcon: const Icon(Icons.search, color: Colors.grey),
                                ),
                              ),
                            ),
                            SizedBox(height: mQuery.size.height*0.026,),
                            Text("Clothes Detail",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800
                            ),),
                            SizedBox(height: mQuery.size.height*0.02,),
                            Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: mQuery.size.height * 0.65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 0.2,
                                        blurRadius: 7,
                                        offset: Offset(0, 0), // changes the position of the shadow
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
          if (_isDropdownOpen)
            Positioned(
              top: mQuery.size.height * 0.14,
              left: mQuery.size.height * 0.08,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isDropdownOpen = false;
                  });
                },
                child: Container(
                  height: mQuery.size.height * 0.24,
                  width: mQuery.size.width * 0.48,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.2,
                        blurRadius: 7,
                        offset: Offset(0, 0), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: mQuery.size.height * 0.001),
                        _buildDropdownRow("Wash & Iron", 0),
                        SizedBox(height: mQuery.size.height * 0.001),
                        _buildDropdownRow("Stream Iron", 1),
                        SizedBox(height: mQuery.size.height * 0.001),
                        _buildDropdownRow("Dry Clean", 2),
                        SizedBox(height: mQuery.size.height * 0.001),
                        _buildDropdownRow("Premium", 3),
                        SizedBox(height: mQuery.size.height * 0.001),
                        _buildDropdownRow("Shoe & Bag Care", 4),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildDropdownRow(String text, int index) {
    var mQuery = MediaQuery.of(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedRowIndex = index;
          _isDropdownOpen = false;
        });
      },
      child: Container(
        color: _selectedRowIndex == index ? Color(0xffd4f0ff) : Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: mQuery.size.height * 0.008),
          child: Row(
            children: [
              Image.asset(
                index == 0
                    ? "assets/images/Wash & Iron.png"
                    : index == 1
                    ? "assets/images/Steam Iron.png"
                    : index == 2
                    ? "assets/images/Dry Clean.png"
                    : index == 3
                    ? "assets/images/Premium Wash.png"
                    : "assets/images/Shoe & Bag Care.png",
                width: index == 3 ? 28 : 24,
              ),
              SizedBox(width: mQuery.size.width * 0.01),
              Text(
                text,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

