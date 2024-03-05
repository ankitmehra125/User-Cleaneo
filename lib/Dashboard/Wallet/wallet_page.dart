import 'package:cleaneo_user_app/Dashboard/Wallet/addMoney_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
import 'package:cleaneo_user_app/pages/mydrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // Define a map to store the transactions data
  final List<Map<String, dynamic>> transactions = [
    {
      'image': "assets/images/drawer-images/shopping-bag.png",
      'title': "Paid for Order #1234567890",
      'amount': -100.00,
      'time': "11:30 AM",
    },
    {
      'image': "assets/images/drawer-images/wallet.png",
      'title': "Money added to wallet",
      'amount': 100.00,
      'time': "11:30 AM",
    },
    {
      'image': "assets/images/drawer-images/heart.png",
      'title': "Money Donated",
      'amount': -100.00,
      'time': "11:30 AM",
    },
    {
      'image': "assets/images/drawer-images/shopping-bag.png",
      'title': "Paid for Order #1234567890",
      'amount': -100.00,
      'time': "11:30 AM",
    },
  ];

  int selectedIndex = -1; // Index of the selected circular container

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    var balance = 500.00;

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
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: Icon(Icons.menu, color: Colors.white,
                      size: mQuery.size.height*0.04,),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.045,
                  ),
                  Text(
                    "Wallet",
                    style: TextStyle(
                        fontSize: mQuery.size.height * 0.027,
                        color: Colors.white,
                        fontFamily: 'SatoshiBold'),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    "Bal : ₹ $balance",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: mQuery.size.height * 0.02,
                        fontFamily: 'SatoshiRegular'),
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
                      topRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: mQuery.size.height * 0.028,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width * 0.045,
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                _openTransactionBottomSheet(context);
                              },
                              child: Image.asset(
                                "assets/images/filter.png",
                                width: mQuery.size.width * 0.05,
                              ),
                            ),
                            SizedBox(width: mQuery.size.width * 0.025),
                            GestureDetector(
                              onTap: () {
                                _openTransactionBottomSheet(context);
                              },
                              child: Text(
                                "Transactions",
                                style: TextStyle(
                                    fontFamily: 'SatoshiMedium'
                                ),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return AddMoneyPage();
                                    }));
                              },
                              child: Container(
                                width: mQuery.size.width * 0.06,
                                height: mQuery.size.height * 0.02,
                                decoration: BoxDecoration(
                                    color: Color(0xff29b2fe),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(Icons.add, color: Colors.white,
                                   size: mQuery.size.width*0.037,),
                                ),
                              ),
                            ),
                            SizedBox(width: mQuery.size.width * 0.017),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return AddMoneyPage();
                                    }));
                              },
                              child: Text(
                                "Add Money",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.018,
                                    color: Color(0xff29b2fe),
                                    fontFamily: 'SatoshiMedium'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: mQuery.size.height * 0.023),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width * 0.045,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today",
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'SatoshiRegular',
                                fontSize: mQuery.size.height * 0.0185,
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.013),
                            // Build list of transactions dynamically
                            for (var transaction in transactions) ...[
                              Container(
                                width: double.infinity,
                                height: mQuery.size.height * 0.08,
                                padding: EdgeInsets.symmetric(
                                    horizontal: mQuery.size.width * 0.03),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(
                                          0, 0), // changes the position of the shadow
                                    ),
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Image.asset(transaction['image'],
                                        color: Color(0xff29b2fe),
                                        width: mQuery.size.width * 0.065,
                                      ),
                                      SizedBox(width: mQuery.size.width * 0.02),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              height:
                                              mQuery.size.height * 0.01),
                                          Row(
                                            children: [
                                              Text(
                                                transaction['title'],
                                                style: TextStyle(
                                                    fontSize:
                                                    mQuery.size.height *
                                                        0.019,
                                                    fontFamily: 'SatoshiMedium'),
                                              ),
                                              SizedBox(width: mQuery.size.width * 0.06),    /////////////// FOR SPACE
                                              Text(
                                                transaction['amount'] >= 0
                                                    ? "+ ₹ ${transaction['amount'].abs().toStringAsFixed(2)}"
                                                    : "- ₹ ${transaction['amount'].abs().toStringAsFixed(2)}",
                                                style: TextStyle(
                                                    color: transaction['amount'] >=
                                                        0
                                                        ? Colors.green
                                                        : Colors.red,
                                                    fontFamily: 'SatoshiMedium',
                                                    fontSize: mQuery.size.height*0.017),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                              height:
                                              mQuery.size.height * 0.0035),
                                          Text(
                                            transaction['time'],
                                            style: TextStyle(
                                                fontSize:
                                                mQuery.size.height * 0.0155,
                                              fontFamily: 'SatoshiRegular'),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: mQuery.size.height * 0.03),
                            ]
                          ],
                        ),
                      )
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

  void _openTransactionBottomSheet(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                width: double.infinity,
                height: mQuery.size.height * 0.82,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: mQuery.size.height * 0.03),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width * 0.045),
                        child: Text(
                          "Filter Transactions",
                          style: TextStyle(
                              fontSize: mQuery.size.height * 0.023,
                              fontFamily: 'SatoshiBold'),
                        ),
                      ),
                      SizedBox(height: mQuery.size.height * 0.0075),
                      Divider(),
                      SizedBox(height: mQuery.size.height*0.016,),
                      Column(
                        children: [
                          _buildRadioButton(
                              mQuery, setState, 0, "All", Icons.check),
                          SizedBox(height: mQuery.size.height * 0.025),
                          _buildRadioButton(
                              mQuery, setState, 1, "Debited", Icons.check),
                          SizedBox(height: mQuery.size.height * 0.025),
                          _buildRadioButton(
                              mQuery, setState, 2, "Credited", Icons.check),
                          SizedBox(height: mQuery.size.height*0.023,),
                          Divider(),
                          SizedBox(height: mQuery.size.height*0.02,),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: mQuery.size.width * 0.045),
                            child: Row(
                              children: [
                                Text("Filter by Date",style: TextStyle(
                                  fontSize: mQuery.size.height*0.0175,
                                  color: Colors.black54,
                                    fontFamily: 'SatoshiRegular'
                                ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: mQuery.size.height*0.021,),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("FROM",style: TextStyle(
                                    fontSize: mQuery.size.height*0.018,
                                      fontFamily: 'SatoshiMedium'
                                  ),),
                                  SizedBox(height: mQuery.size.height*0.018,),
                                  Container(
                                    width: mQuery.size.width * 0.42,
                                    height: mQuery.size.height * 0.2,
                                    margin: EdgeInsets.only(left: mQuery.size.width * 0.045),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 7,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: RotatedBox(
                                        quarterTurns: 0,
                                        child: Container(
                                          child: Center(
                                            child: Transform.scale(
                                              scale: 0.8, // Adjust scale factor as needed to reduce the size
                                              child: CupertinoDatePicker(
                                                mode: CupertinoDatePickerMode.date,
                                                initialDateTime: DateTime.now(),
                                                onDateTimeChanged: (DateTime newDateTime) {
                                                  // Do something when the date is changed
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                ],
                              ),

                              Expanded(child: SizedBox()),
                              Column(
                                children: [
                                  Text("TO",style: TextStyle(
                                      fontSize: mQuery.size.height*0.018,
                                      fontFamily: 'SatoshiMedium'
                                  ),),
                                  SizedBox(height: mQuery.size.height*0.018,),
                                  Container(
                                    width: mQuery.size.width * 0.42,
                                    height: mQuery.size.height * 0.2,
                                    margin: EdgeInsets.only(left: mQuery.size.width * 0.045),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 7,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: RotatedBox(
                                        quarterTurns: 0,
                                        child: Container(
                                          child: Center(
                                            child: Transform.scale(
                                              scale: 0.8, // Adjust scale factor as needed to reduce the size
                                              child: CupertinoDatePicker(
                                                mode: CupertinoDatePickerMode.date,
                                                initialDateTime: DateTime.now(),
                                                onDateTimeChanged: (DateTime newDateTime) {
                                                  // Do something when the date is changed
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: mQuery.size.height*0.083,),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width*0.045
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: ()
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return WalletPage();
                                    }));
                                  },
                                  child: Container(
                                    width: mQuery.size.width*0.42,
                                    height: mQuery.size.height*0.057,
                                    decoration: BoxDecoration(
                                      color: Color(0xff004c91),
                                      borderRadius: BorderRadius.circular(6)
                                    ),
                                    child: Center(
                                      child: Text("Cancel",style: TextStyle(
                                        color: Colors.white,
                                          fontFamily: 'SatoshiBold',
                                        fontSize: mQuery.size.height*0.022
                                      ),),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: ()
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return WalletPage();
                                    }));
                                  },
                                  child: Container(
                                    width: mQuery.size.width*0.42,
                                    height: mQuery.size.height*0.057,
                                    decoration: BoxDecoration(
                                        color: Color(0xff29b2fe),
                                        borderRadius: BorderRadius.circular(6)
                                    ),
                                    child: Center(
                                      child: Text("Apply",style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SatoshiBold',
                                          fontSize: mQuery.size.height*0.022
                                      ),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }

  Widget _buildRadioButton(
      MediaQueryData mQuery, Function setState, int index, String text, IconData iconData) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mQuery.size.width * 0.045),
        child: Row(
          children: [
            Container(
              width: mQuery.size.width * 0.06,
              height: mQuery.size.height * 0.031,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xff29b2fe))),
              child: Center(
                child: Text(
                  "₹",
                  style: TextStyle(color: Color(0xff29b2fe)),
                ),
              ),
            ),
            SizedBox(width: mQuery.size.width * 0.047),
            Text(
              text,
              style: TextStyle(
                  fontFamily: 'SatoshiMedium',
                  fontSize: mQuery.size.height * 0.017),
            ),
            Expanded(child: SizedBox()),
            Container(
              width: mQuery.size.width * 0.06,
              height: mQuery.size.height * 0.025,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xff29b2fe)),
                color: selectedIndex == index ? Colors.cyan : Colors.white,
              ),
              child: selectedIndex == index
                  ? Icon(
                iconData,
                color: Colors.white,
                size: mQuery.size.width * 0.03,
              )
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
