import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_page.dart';

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

  int selectedContainerIndex = -1; // Track selected container index

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
            SizedBox(height: mQuery.size.height*0.02,),
            Text(
              "NOTE",
              style: TextStyle(
                  color: Colors.red
              ),
            ),
            SizedBox(height: mQuery.size.height*0.01,),
            RichText(
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
              onTap: _openBottomSheet, 
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
        List<String> dates = ["25 June", "26 June", "27 June"];
        return Container(
          height: mQuery.size.height * 0.86,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: mQuery.size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        "Schedule Your Order",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                      ),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: ()
                          {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close))
                    ],
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.01),
                Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pickup Slot",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: mQuery.size.height * 0.016),
                      Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.23,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: mQuery.size.height * 0.01),
                            Text(
                              "SELECT PICKUP DATE",
                              style: TextStyle(fontSize: 14, color: Colors.black54),
                            ),
                            SizedBox(height: mQuery.size.height * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                for (int i = 0; i < dates.length; i++)
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedContainerIndex = i;
                                      });
                                    },
                                    child: Container(
                                      width: mQuery.size.width * 0.2,
                                      height: mQuery.size.height * 0.048,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                          color: selectedContainerIndex == i
                                              ? Colors.green // Change color to green if selected
                                              : Colors.grey,
                                        ),
                                        color: selectedContainerIndex == i
                                            ? Colors.green // Change color to green if selected
                                            : Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          dates[i], // Display date from the list
                                          style: TextStyle(
                                            color: selectedContainerIndex == i
                                                ? Colors.white // Change text color to white if selected
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(height: mQuery.size.height*0.006,),
                            Divider(),
                            SizedBox(height: mQuery.size.height * 0.006),
                            Text(
                              "SELECT PICKUP TIME",
                              style: TextStyle(fontSize: 14, color: Colors.black54),
                            ),
                            SizedBox(height: mQuery.size.height * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Container(
                              width: mQuery.size.width * 0.25,
                              height: mQuery.size.height * 0.048,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                 border: Border.all(
                                   color: Colors.grey
                                 )
                              ),
                                child: Center(
                                  child: Text("10am - 12pm",style: TextStyle(
                                      fontSize: 13
                                  ),),
                                ),
                            ),
                                Container(
                                    width: mQuery.size.width * 0.25,
                                    height: mQuery.size.height * 0.048,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                          color: Colors.grey
                                        )
                                    ),
                                  child: Center(
                                    child: Text("02pm - 04pm",style: TextStyle(
                                      fontSize: 13
                                    ),),
                                  ),
                                ),
                                Container(
                                    width: mQuery.size.width * 0.25,
                                    height: mQuery.size.height * 0.048,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                          color: Colors.grey
                                        )
                                    ),
                                  child: Center(
                                    child: Text("06pm - 08pm",style: TextStyle(
                                        fontSize: 13
                                    ),),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: mQuery.size.height*0.022,),
                      Divider(),
                      SizedBox(height: mQuery.size.height*0.006,),
                      Text(
                        "Delivery Slot",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: mQuery.size.height*0.016,),
                    Container(
                    width: double.infinity,
                    height: mQuery.size.height * 0.23,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: mQuery.size.height * 0.01),
                          Text(
                            "SELECT DELIVERY DATE",
                            style: TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                          SizedBox(height: mQuery.size.height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: mQuery.size.width * 0.2,
                                height: mQuery.size.height * 0.048,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                color: Colors.grey
                              )
                              ),
                                child: Center(
                                  child: Text("25 June",style: TextStyle(
                                    fontSize: 13
                                  ),),
                                ),
                              ),
                              Container(
                                width: mQuery.size.width * 0.2,
                                height: mQuery.size.height * 0.048,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color: Colors.grey
                                    )
                                ),
                                child: Center(
                                  child: Text("28 June",style: TextStyle(
                                      fontSize: 13
                                  ),),
                                ),
                              ),
                              Container(
                                width: mQuery.size.width * 0.2,
                                height: mQuery.size.height * 0.048,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color: Colors.grey
                                    )
                                ),
                                child: Center(
                                  child: Text("29 June",style: TextStyle(
                                      fontSize: 13
                                  ),),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: mQuery.size.height * 0.006),
                          Divider(),
                          SizedBox(height: mQuery.size.height*0.006,),
                          Text(
                            "SELECT DELIVERY TIME",
                            style: TextStyle(fontSize: 14,
                                color: Colors.black54),
                          ),
                          SizedBox(height: mQuery.size.height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: mQuery.size.width * 0.25,
                                height: mQuery.size.height * 0.048,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color: Colors.grey
                                    )
                                ),
                                child: Center(
                                  child: Text("10am - 12pm",style: TextStyle(
                                      fontSize: 13
                                  ),),
                                ),
                              ),
                              Container(
                                width: mQuery.size.width * 0.25,
                                height: mQuery.size.height * 0.048,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color: Colors.grey
                                    )
                                ),
                                child: Center(
                                  child: Text("02pm - 04pm",style: TextStyle(
                                      fontSize: 13
                                  ),),
                                ),
                              ),
                              Container(
                                width: mQuery.size.width * 0.25,
                                height: mQuery.size.height * 0.048,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color: Colors.grey
                                    )
                                ),
                                child: Center(
                                  child: Text("06pm - 08pm",style: TextStyle(
                                      fontSize: 13
                                  ),),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                  ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      Divider(),
                      SizedBox(height: mQuery.size.height*0.01,),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Note: ",style: TextStyle(
                              color: Colors.red
                            )
                            ),
                            TextSpan(
                              text: "Delivery of heavy and dry clean items may be delayed.",style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12
                            )
                            )
                          ]
                        ),
                      ),
                      SizedBox(height: mQuery.size.height*0.02,),
                      Container(
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
                                Text("₹ 1,220 plus taxes",style: TextStyle(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
