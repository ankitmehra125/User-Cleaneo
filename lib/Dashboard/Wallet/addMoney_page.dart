import 'package:cleaneo_user_app/Dashboard/Wallet/wallet_page.dart';
import 'package:cleaneo_user_app/Help/help_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddMoneyPage extends StatefulWidget {
  const AddMoneyPage({Key? key}) : super(key: key);

  @override
  State<AddMoneyPage> createState() => _AddMoneyPageState();
}

class _AddMoneyPageState extends State<AddMoneyPage> {
  late int selectedContainerIndex; // to track the selected container index
  String selectedAmount = '';
  int selectedPaymentMethod = -1;// to store the selected amount

  @override
  void initState() {
    super.initState();
    selectedContainerIndex = -1; // initialize with an invalid index
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    double balance = 5.00;
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
                top: mQuery.size.height * 0.058,
                bottom: mQuery.size.height * 0.03,
                left: mQuery.size.width * 0.045,
                right: mQuery.size.width * 0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return WalletPage();
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
                    "Add Money",
                    style: TextStyle(
                        fontSize: mQuery.size.height * 0.027,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
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
                  padding: EdgeInsets.only(
                    top: mQuery.size.height * 0.022,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "Wallet Bal : ₹ $balance",
                            style: TextStyle(
                                fontSize: mQuery.size.height * 0.022,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Divider(),
                        SizedBox(height: mQuery.size.height * 0.024),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width * 0.045,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: mQuery.size.height * 0.056,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 3,
                                          offset: Offset(0, 0))
                                    ]),
                                child: Center(
                                  child: Text(
                                    '₹ $selectedAmount',
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.022,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: mQuery.size.height * 0.02),
                              Center(
                                child: Text(
                                  "Most Popular",
                                  style: TextStyle(
                                      color: Color(0xff29b2fe),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(height: mQuery.size.height * 0.02),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildAmountContainer(
                                    mQuery,
                                    amount: "100",
                                    isSelected: selectedContainerIndex == 0,
                                    onTap: () {
                                      setState(() {
                                        selectedContainerIndex = 0;
                                        selectedAmount = "100";
                                      });
                                    },
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.05),
                                  _buildAmountContainer(
                                    mQuery,
                                    amount: "500",
                                    isSelected: selectedContainerIndex == 1,
                                    onTap: () {
                                      setState(() {
                                        selectedContainerIndex = 1;
                                        selectedAmount = "500";
                                      });
                                    },
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.05),
                                  _buildAmountContainer(
                                    mQuery,
                                    amount: "1000",
                                    isSelected: selectedContainerIndex == 2,
                                    onTap: () {
                                      setState(() {
                                        selectedContainerIndex = 2;
                                        selectedAmount = "1000";
                                      });
                                    },
                                  ),
                                ],
                              ),

                              SizedBox(height: mQuery.size.height * 0.028),
                              Container(
                                width: double.infinity,
                                height: mQuery.size.height * 0.27,
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Other Wallets/UPI",
                                            style: TextStyle(
                                                fontSize: mQuery.size.height*0.0195,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Expanded(child: SizedBox()),
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
                                          SizedBox(width: mQuery.size.width * 0.026),
                                          Text(
                                            "Add New",
                                            style: TextStyle(
                                                fontSize: mQuery.size.height*0.018,
                                                color: Color(0xff29b2fe),
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: [
                                          Container(
                                            width: mQuery.size.width * 0.1,
                                            height: mQuery.size.height * 0.033,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                            child: SvgPicture.asset(
                                                "assets/images/paytm.svg",
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.03),
                                          Text(
                                            "Paytm",
                                            style: TextStyle(
                                                fontSize: mQuery.size.height*0.0195,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Radio(
                                            value: 1,
                                            groupValue: selectedPaymentMethod,
                                            onChanged: (int? value) {
                                              setState(() {
                                                selectedPaymentMethod = value!;
                                              });
                                            },
                                            activeColor: Color(0xff29b2fe),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/phonepe.png",
                                            width: mQuery.size.width*0.07
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.07),
                                          Text(
                                            "PhonePe",
                                            style: TextStyle(
                                                fontSize: mQuery.size.height*0.0195,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Radio(
                                            value: 2,
                                            groupValue: selectedPaymentMethod,
                                            onChanged: (int? value) {
                                              setState(() {
                                                selectedPaymentMethod = value!;
                                              });
                                            },
                                            activeColor: Color(0xff29b2fe),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/images/google-pay.svg",
                                             width : mQuery.size.width*0.07
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.07),
                                          Text(
                                            "GPay",
                                            style: TextStyle(
                                                fontSize: mQuery.size.height*0.0195,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Radio(
                                            value: 3,
                                            groupValue: selectedPaymentMethod,
                                            onChanged: (int? value) {
                                              setState(() {
                                                selectedPaymentMethod = value!;
                                              });
                                            },
                                            activeColor: Color(0xff29b2fe),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: mQuery.size.height * 0.027),
                              Container(
                                width: double.infinity,
                                height: mQuery.size.height * 0.28,
                                padding: EdgeInsets.symmetric(
                                  horizontal: mQuery.size.width*0.045
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Credit/ Debit Cards",
                                            style: TextStyle(
                                                fontSize: mQuery.size.height*0.02,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Expanded(child: SizedBox()),
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
                                          SizedBox(width: mQuery.size.width * 0.026),
                                          Text(
                                            "Add New",
                                            style: TextStyle(
                                                fontSize: mQuery.size.height*0.018,
                                                color: Color(0xff29b2fe),
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        children: [
                                          Container(
                                            width: mQuery.size.width * 0.1,
                                            height: mQuery.size.height * 0.033,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                            child: SvgPicture.asset(
                                                "assets/images/visa_card.svg"),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.03),
                                          Text(
                                            "6220 XXXX XXXX 4452",
                                            style: TextStyle(
                                                fontSize: mQuery.size.height*0.0195,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Radio(
                                            value: 4,
                                            groupValue: selectedPaymentMethod,
                                            onChanged: (int? value) {
                                              setState(() {
                                                selectedPaymentMethod = value!;
                                              });
                                            },
                                            activeColor: Colors.cyan,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: mQuery.size.width * 0.1,
                                            height: mQuery.size.height * 0.033,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                            child: SvgPicture.asset(
                                                "assets/images/mastercard.svg"),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.033),
                                          Text(
                                            "5555 XXXX XXXX 8888",
                                            style: TextStyle(
                                                fontSize: mQuery.size.height*0.0195,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Radio(
                                            value: 5,
                                            groupValue: selectedPaymentMethod,
                                            onChanged: (int? value) {
                                              setState(() {
                                                selectedPaymentMethod = value!;
                                              });
                                            },
                                            activeColor: Colors.cyan,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: mQuery.size.width * 0.1,
                                            height: mQuery.size.height * 0.033,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                            child: SvgPicture.asset(
                                                "assets/images/amex.svg"),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.035),
                                          Text(
                                            "4111 XXXX XXXX 7777",
                                            style: TextStyle(
                                                fontSize: mQuery.size.height*0.0195,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Radio(
                                            value: 6,
                                            groupValue: selectedPaymentMethod,
                                            onChanged: (int? value) {
                                              setState(() {
                                                selectedPaymentMethod = value!;
                                              });
                                            },
                                            activeColor: Colors.cyan,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.045
              ),
              child:  Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return WalletPage();
                      }));
                    },
                    child: Container(
                      width: mQuery.size.width * 0.43,
                      height: mQuery.size.height * 0.055,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xff004c91),
                      ),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontSize: mQuery.size.height*0.02,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return WalletPage();
                      }));
                    },
                    child: Container(
                      width: mQuery.size.width * 0.43,
                      height: mQuery.size.height * 0.055,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xff29b2fe),
                      ),
                      child: Center(
                        child: Text(
                          "Add",
                          style: TextStyle(
                              fontSize: mQuery.size.height*0.02,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAmountContainer(
      MediaQueryData mQuery, {
        required String amount,
        required bool isSelected,
        required VoidCallback onTap,
      }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: mQuery.size.width * 0.17,
        height: mQuery.size.height * 0.085,
        decoration: BoxDecoration(
            color: isSelected ? Color(0xff29b2fe) : Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: Offset(0, 0))
            ]),
        child: Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "₹",
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black),
                ),
                TextSpan(
                  text: amount,
                  style: TextStyle(
                      fontSize: mQuery.size.height * 0.022,
                      fontWeight: FontWeight.w600,
                      color: isSelected ? Colors.white : Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
