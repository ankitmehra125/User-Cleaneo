import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ManageCardsPage extends StatefulWidget {
  const ManageCardsPage({Key? key}) : super(key: key);

  @override
  State<ManageCardsPage> createState() => _ManageCardsPageState();
}

class _ManageCardsPageState extends State<ManageCardsPage> {
  bool isChecked = false;
  bool isChecked2 = false;
  TextEditingController cardNoController = TextEditingController();
  TextEditingController mmyyController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  String? selectedCardType;
  bool showCard = false;

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
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white,)),
                  SizedBox(width: mQuery.size.width * 0.045,),
                  Text("Manage Cards", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
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
                      topRight: Radius.circular(16)
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: mQuery.size.height * 0.02,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text("Credit/Debit Cards", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800
                          ),),
                          Expanded(child: SizedBox()),
                          GestureDetector(
                            onTap: _openBottomSheet,
                            child: Row(
                              children: [
                                Container(
                                  width: mQuery.size.width * 0.06,
                                  height: mQuery.size.height * 0.06,
                                  decoration: BoxDecoration(
                                      color: Color(0xff29b2fe),
                                      shape: BoxShape.circle
                                  ),
                                  child: Center(
                                    child: Icon(Icons.add, color: Colors.white,
                                        size: 15),
                                  ),
                                ),
                                SizedBox(width: mQuery.size.width * 0.03,),
                                Text("Add New", style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff29b2fe),
                                    fontWeight: FontWeight.w600
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(),

                    SizedBox(height: mQuery.size.height * 0.025,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          if (showCard)
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              width: double.infinity,
                              height: mQuery.size.height * 0.1,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0.4,
                                    blurRadius: 3,
                                    offset: Offset(0, 0), // changes the position of the shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      if(selectedCardType != null) SvgPicture.asset(
                                        getImagePath(selectedCardType!),
                                        width: 20, height: 24,
                                      ),
                                      SizedBox(width: mQuery.size.width * 0.03,),
                                      RichText(
                                          text: TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: "${cardNoController.text} ", style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600
                                                )
                                                ),
                                                TextSpan(
                                                    text: "${cvvController.text}", style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 15
                                                )
                                                ),
                                              ]
                                          )
                                      ),
                                      Expanded(child: SizedBox()),
                                      Icon(Icons.delete, color: Colors.black54,),
                                      SizedBox(width: mQuery.size.width * 0.033,),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isChecked = !isChecked;
                                          });
                                        },
                                        child: Container(
                                          width: mQuery.size.width * 0.047,
                                          height: mQuery.size.height * 0.04,
                                          decoration: BoxDecoration(
                                              color: isChecked ? Color(0xff29b2fe) : Colors.white,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: isChecked ? Colors.white : Colors.black54
                                              )
                                          ),
                                          child: Icon(Icons.check,
                                            size: 10,
                                            color: isChecked ? Colors.white : Colors.black54,),
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Text("Valid Till ${mmyyController.text}", style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 13
                                  ),)
                                ],
                              ),
                            ),
                          if (!showCard)
                            Center(
                              child: Text(
                                'No cards here',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
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
    );
  }

  String getImagePath(String cardType) {
    switch (cardType) {
      case 'Mastercard':
        return "assets/images/mastercard.svg";
      case 'Visa':
        return "assets/images/visa_card.svg";
      case 'Amex':
        return "assets/images/amex.svg";
      default:
        return "";
    }
  }

  void _openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        return Container(
          width: double.infinity,
          height: mQuery.size.height * 0.53,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16)
              )
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: mQuery.size.height * 0.032,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text("Add Debit/Credit Card", style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700
                      ),
                      ),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context); // Close the bottom sheet
                          },
                          child: Icon(Icons.close, color: Colors.black87,))
                    ],
                  ),
                ),
                SizedBox(height: mQuery.size.height * 0.02,),
                Divider(),
                SizedBox(height: mQuery.size.height * 0.01,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCardType = 'Mastercard';
                                });
                              },
                              child: Container(
                                width: mQuery.size.width * 0.15,
                                height: mQuery.size.height * 0.05,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0.5,
                                      blurRadius: 1,
                                      offset: Offset(0, 0), // changes the position of the shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: SvgPicture.asset("assets/images/mastercard.svg",
                                    width: 30, height: 30,),
                                ),
                              ),
                            ),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCardType = 'Visa';
                                });
                              },
                              child: Container(
                                width: mQuery.size.width * 0.15,
                                height: mQuery.size.height * 0.05,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0.5,
                                      blurRadius: 1,
                                      offset: Offset(0, 0), // changes the position of the shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: SvgPicture.asset("assets/images/visa_card.svg",
                                    width: 30, height: 30,),
                                ),
                              ),
                            ),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCardType = 'Amex';
                                });
                              },
                              child: Container(
                                width: mQuery.size.width * 0.15,
                                height: mQuery.size.height * 0.05,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0.5,
                                      blurRadius: 1,
                                      offset: Offset(0, 0), // changes the position of the shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: SvgPicture.asset("assets/images/amex.svg",
                                    width: 30, height: 30,),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: mQuery.size.height * 0.02,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: TextField(
                            cursorColor: Colors.grey,
                            controller: cardNoController,
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "Card Number",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffABAFB1),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                            ),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.02,),
                        Row(
                          children: [
                            Container(
                              width: mQuery.size.width * 0.43,
                              height: mQuery.size.height * 0.055,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: TextField(
                                cursorColor: Colors.grey,
                                controller: mmyyController,
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: "MM/YY",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffABAFB1),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                                ),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Container(
                              width: mQuery.size.width * 0.43,
                              height: mQuery.size.height * 0.055,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: TextField(
                                cursorColor: Colors.grey,
                                controller: cvvController,
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: "CVV",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffABAFB1),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: mQuery.size.height * 0.02,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: TextField(
                            cursorColor: Colors.grey,
                            controller: nameController,
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintText: "Name",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffABAFB1),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                            ),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.05,),

                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context); // Close the bottom sheet
                              },
                              child: Container(
                                width: mQuery.size.width * 0.43,
                                height: mQuery.size.height * 0.055,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xff004c91),
                                ),
                                child: Center(
                                  child: Text("Cancel", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800
                                  ),),
                                ),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showCard = true;
                                });
                                Navigator.pop(context); // Close the bottom sheet
                              },
                              child: Container(
                                width: mQuery.size.width * 0.43,
                                height: mQuery.size.height * 0.055,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xff29b2fe),
                                ),
                                child: Center(
                                  child: Text("Add", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800
                                  ),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
