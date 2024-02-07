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
                      Column(
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
                    ],
                  ),
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
}


