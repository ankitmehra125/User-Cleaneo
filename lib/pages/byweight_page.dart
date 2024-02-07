import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_page.dart'; // Importing the HomePage

class ByWeightPage extends StatefulWidget {
  const ByWeightPage({Key? key});

  @override
  State<ByWeightPage> createState() => _ByWeightPageState();
}

class _ByWeightPageState extends State<ByWeightPage> {
  int kg = 0;
  int noCloths = 33;
  bool clothSoftenerSelected = false;
  bool antigermsSelected = false; // Track if cloth softener is selected


  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mQuery.size.height * 0.03),
            Text(
              "Add Clothes",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: mQuery.size.height * 0.022),
            Container(
              width: double.infinity,
              height: mQuery.size.height * 0.15,
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
                    SizedBox(height: mQuery.size.height * 0.015,),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/kg.svg",
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: mQuery.size.width * 0.033),
                        Text(
                          "Tentative KG",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        InkWell(
                          onTap: () {
                            setState(() {
                              kg = kg > 0 ? kg - 1 : 0; // Prevent negative value
                            });
                          },
                          child: Container(
                            width: mQuery.size.width * 0.1,
                            height: mQuery.size.height * 0.026,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Center(
                              child: Icon(Icons.remove, size: 14),
                            ),
                          ),
                        ),
                        SizedBox(width: mQuery.size.width * 0.026),
                        Text(
                          "$kg",
                          style: TextStyle(
                            color: Color(0xff29b2fe),
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: mQuery.size.width * 0.026),
                        InkWell(
                          onTap: () {
                            setState(() {
                              kg++;
                            });
                          },
                          child: Container(
                            width: mQuery.size.width * 0.1,
                            height: mQuery.size.height * 0.026,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black),
                            ),
                            child: Center(
                              child: Icon(Icons.add, size: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 33),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "₹ 30 PER KG",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/cloths.png", width: 28,),
                        SizedBox(width: mQuery.size.width * 0.018),
                        Text(
                          "Number of clothes, in total",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Container(
                          width: mQuery.size.width*0.18,
                          height: mQuery.size.height*0.042,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.grey
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 1,
                                offset: Offset(0, 0), // changes the position of the shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "$noCloths",
                              style: TextStyle(
                                color: Color(0xff29b2fe),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.02,),
            Text(
              "NOTE",
              style: TextStyle(
                  color: Colors.red
              ),
            ),
            SizedBox(height: mQuery.size.height*0.01,),
            GestureDetector(
              onTap: _openBottomSheet, // Call function to open bottom sheet
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "The final charges will be based on the actual weight of the clothes. "
                          "Heavy items and dry cleaning items are not included in weight "
                          "category. To add those items go to ",
                      style: TextStyle(color: Colors.black54),
                    ),
                    TextSpan(
                      text: "'SEARCH'",
                      style: TextStyle(color: Color(0xff29b2fe)),
                    ),
                    TextSpan(
                      text: " on Dashboard",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.05,),
            Text("Select Add-On",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)
            ),
            SizedBox(height: mQuery.size.height*0.02,),
            Container(
              padding: EdgeInsets.only(right: 16),
              width: double.infinity,
              height: mQuery.size.height*0.14,
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
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: clothSoftenerSelected,
                        activeColor: Color(0xff29b2fe),
                        onChanged: (value) {
                          setState(() {
                            clothSoftenerSelected = value!;
                          });
                        },
                      ),
                      Text(
                        "Cloth Softener",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(Icons.add,color: Colors.black54,size: 18,),
                      SizedBox(width: mQuery.size.width*0.04,),
                      Text("₹ 5 PER KG",style: TextStyle(
                          color: Colors.black54
                      ),)
                    ],
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: antigermsSelected,
                        activeColor: Color(0xff29b2f2),
                        onChanged: (value) {
                          setState(() {
                            antigermsSelected = value!;
                          });
                        },
                      ),
                      Text(
                        "Anti-Germs Liquid",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(Icons.add,color: Colors.black54,size: 18,),
                      SizedBox(width: mQuery.size.width*0.04,),
                      Text("₹ 5 PER KG",style: TextStyle(
                          color: Colors.black54
                      ),)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: mQuery.size.height*0.033,),
            GestureDetector(
              onTap: _openBottomSheet, // Call function to open bottom sheet
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.08,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: Color(0xff29b2fe),
                    borderRadius: BorderRadius.circular(6)
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQuery.size.height*0.012,),
                        Text("$noCloths ITEMS",style: TextStyle(
                            color: Colors.white
                        ),),
                        Text("₹ 1,500 plus taxes",style: TextStyle(
                            color: Colors.white
                        ))
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Text("Proceed",style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w800
                    )),
                    SizedBox(width: mQuery.size.width*0.02,),
                    Icon(Icons.arrow_right,color: Colors.white,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  void _openBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        return Container(
            height: mQuery.size.height*0.9,
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
        topRight: Radius.circular(16)
        )
        ),
        );
      },
    );
  }
}
