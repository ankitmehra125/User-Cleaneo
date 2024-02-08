import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuantityWisePage extends StatefulWidget {
  const QuantityWisePage({Key? key}) : super(key: key);

  @override
  State<QuantityWisePage> createState() => _QuantityWisePageState();
}

class _QuantityWisePageState extends State<QuantityWisePage> {
  TextEditingController searchController = TextEditingController();
  String? selectedType;
  bool clothSoftenerSelected = false;
  bool antigermsSelected = false;
  int noCloths = 24;
  int selectedContainerIndex = -1;

  List<Map<String, dynamic>> itemList = [
    {"name": "Shirts", "price": "₹ 30 PER KG"},
    {"name": "Trousers", "price": "₹ 40 PER KG"},
    {"name": "Dresses", "price": "₹ 50 PER KG"},
    {"name": "Jeans", "price": "₹ 45 PER KG"},
    {"name": "Skirts", "price": "₹ 35 PER KG"},
    {"name": "Blouses", "price": "₹ 25 PER KG"},
    {"name": "Shorts", "price": "₹ 20 PER KG"},
    {"name": "Coats", "price": "₹ 60 PER KG"},
    {"name": "Sweaters", "price": "₹ 55 PER KG"},
    {"name": "Jackets", "price": "₹ 65 PER KG"},
    {"name": "Socks", "price": "₹ 15 PER KG"},
    {"name": "Underwear", "price": "₹ 20 PER KG"},
    {"name": "Scarves", "price": "₹ 25 PER KG"},
  ];

  List<int> kgValues = List.filled(13, 0);

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.03),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
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
            SizedBox(height: mQuery.size.height * 0.025),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            HapticFeedback.vibrate();
                            setState(() {
                              selectedType = 'Women';
                            });
                          },
                          child: buildCategoryContainer(
                              mQuery, "assets/images/Women.png", "Women"),
                        ),
                        SizedBox(width: mQuery.size.width * 0.03),
                        GestureDetector(
                          onTap: () {
                            HapticFeedback.vibrate();
                            setState(() {
                              selectedType = 'Men';
                            });
                          },
                          child: buildCategoryContainer(
                              mQuery, "assets/images/Men.png", "Men"),
                        ),
                        SizedBox(width: mQuery.size.width * 0.03),
                        GestureDetector(
                          onTap: () {
                            HapticFeedback.vibrate();
                            setState(() {
                              selectedType = 'Household';
                            });
                          },
                          child: buildCategoryContainer(
                              mQuery, "assets/images/Household.png", "Household"),
                        ),
                      ],
                    ),
                    SizedBox(height: mQuery.size.height * 0.023),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Add Clothes",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: mQuery.size.height * 0.023),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: mQuery.size.height * 0.4,
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
                                child: ListView.builder(
                                  itemCount: itemList.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return buildItemContainer(
                                      mQuery,
                                      itemList[index]["name"],
                                      itemList[index]["price"],
                                      kgValues[index],
                                          () {
                                        setState(() {
                                          kgValues[index] =
                                          kgValues[index] > 0 ? kgValues[index] - 1 : 0;
                                        });
                                      },
                                          () {
                                        setState(() {
                                          kgValues[index]++;
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: mQuery.size.height * 0.023),
                        Row(
                          children: [
                            Text(
                              "Select Add-On",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                        SizedBox(height: mQuery.size.height * 0.02),
                        Container(
                          padding: EdgeInsets.only(right: 16),
                          width: double.infinity,
                          height: mQuery.size.height * 0.14,
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
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Icon(Icons.add, color: Colors.black54, size: 18),
                                  SizedBox(width: mQuery.size.width * 0.04),
                                  Text(
                                    "₹ 1 PER KG",
                                    style: TextStyle(color: Colors.black54),
                                  )
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
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Icon(Icons.add, color: Colors.black54, size: 18),
                                  SizedBox(width: mQuery.size.width * 0.04),
                                  Text(
                                    "₹ 1 PER KG",
                                    style: TextStyle(color: Colors.black54),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget buildCategoryContainer(
      MediaQueryData mQuery, String imagePath, String categoryName) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.vibrate();
        setState(() {
          selectedType = categoryName;
        });
      },
      child: Column(
        children: [
          Container(
            width: mQuery.size.width * 0.14,
            height: mQuery.size.height * 0.065,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: selectedType == categoryName
                      ? Color(0xff29b2fe)
                      : Colors.transparent),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 2,
                  offset: Offset(0, 0), // changes the position of the shadow
                ),
              ],
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: mQuery.size.height * 0.007),
          Text(
            categoryName,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 12,
                color: selectedType == categoryName
                    ? Color(0xff29b2fe)
                    : Colors.black),
          ),
        ],
      ),
    );
  }

  Widget buildItemContainer(
      MediaQueryData mQuery, String itemName, String itemPrice, int kgValue,
      Function() onRemovePressed, Function() onAddPressed) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: mQuery.size.height * 0.07,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemName,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(
                itemPrice,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Expanded(child: SizedBox()),
          InkWell(
            onTap: onRemovePressed,
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
            "$kgValue",
            style: TextStyle(
              color: Color(0xff29b2fe),
              fontSize: 20,
            ),
          ),
          SizedBox(width: mQuery.size.width * 0.026),
          InkWell(
            onTap: onAddPressed,
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


