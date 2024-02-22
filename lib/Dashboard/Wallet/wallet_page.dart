import 'package:cleaneo_user_app/Dashboard/Wallet/addMoney_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
import 'package:cleaneo_user_app/Help/help_page.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
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

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    var balance = 500.00;
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
              child: Row(
                children: [
                  GestureDetector(
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
                    "Wallet",
                    style: TextStyle(
                        fontSize: mQuery.size.height*0.027,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: SizedBox()),
                  Text("Bal : ₹ $balance",style: TextStyle(
                      color: Colors.white,
                      fontSize: mQuery.size.height*0.022,
                      fontWeight: FontWeight.w600
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
                      topRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: mQuery.size.height*0.028,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width*0.045,
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/images/filter.png",
                              width: mQuery.size.width*0.05,
                            ),
                            SizedBox(width: mQuery.size.width*0.025,),
                            Text("Transactions",style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                            Expanded(child: SizedBox()),
                            GestureDetector(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return AddMoneyPage();
                                }));
                              },
                              child: Container(
                                width: mQuery.size.width * 0.06,
                                height: mQuery.size.height * 0.02,
                                decoration: BoxDecoration(
                                    color: Color(0xff29b2fe),
                                    shape: BoxShape.circle
                                ),
                                child: Center(
                                  child: Icon(Icons.add, color: Colors.white,
                                      size: mQuery.size.width*0.03
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: mQuery.size.width * 0.017,),
                            GestureDetector(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return AddMoneyPage();
                                }));
                              },
                              child: Text("Add New", style: TextStyle(
                                  fontSize: mQuery.size.height*0.018,
                                  color: Color(0xff29b2fe),
                                  fontWeight: FontWeight.w600
                              ),),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: mQuery.size.height*0.023,),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width*0.045,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Today",style: TextStyle(
                              color: Colors.black54,
                              fontSize: mQuery.size.height*0.0185,
                            ),
                            ),
                            SizedBox(height: mQuery.size.height*0.013,),
                            // Build list of transactions dynamically
                            for (var transaction in transactions) ...[
                              Container(
                                width: double.infinity,
                                height: mQuery.size.height*0.08,
                                padding: EdgeInsets.symmetric(
                                    horizontal: mQuery.size.width*0.03
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0, 0), // changes the position of the shadow
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(transaction['image'],
                                      color: Color(0xff29b2fe), width: mQuery.size.width*0.065,
                                    ),
                                    SizedBox(width: mQuery.size.width*0.02,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: mQuery.size.height*0.01,),
                                        Row(
                                          children: [
                                            Text(transaction['title'],style: TextStyle(
                                                fontSize: mQuery.size.height*0.019,
                                                fontWeight: FontWeight.w600
                                            ),),
                                            SizedBox(width: mQuery.size.width*0.05,),
                                            Text(transaction['amount'] >= 0 ? "+ ₹ ${transaction['amount'].abs().toStringAsFixed(2)}" : "- ₹ ${transaction['amount'].abs().toStringAsFixed(2)}",style: TextStyle(
                                                color: transaction['amount'] >= 0 ? Colors.green : Colors.red,
                                                fontWeight: FontWeight.w600
                                            ),)
                                          ],
                                        ),
                                        SizedBox(height: mQuery.size.height*0.0035,),
                                        Text(transaction['time'],style: TextStyle(
                                            fontSize: mQuery.size.height*0.017
                                        ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: mQuery.size.height*0.03,),
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
}
