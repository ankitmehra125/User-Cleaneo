import 'package:cleaneo_user_app/pages/dryclean_page.dart';
import 'package:cleaneo_user_app/pages/mydrawer.dart';
import 'package:cleaneo_user_app/pages/myprofile.dart';
import 'package:cleaneo_user_app/pages/wash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  var orderNo = 3;
  int selectedContainerIndex = -1;

  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> gridItems = [
    {"image": "assets/images/Wash.png", "text": "Wash"},
    {"image": "assets/images/Wash & Iron.png", "text": "Wash & Iron"},
    {"image": "assets/images/Steam Iron.png", "text": "Stream Iron"},
    {"image": "assets/images/Dry Clean.png", "text": "Dry Clean"},
    {"image": "assets/images/Premium Wash.png", "text": "Premium Wash"},
    {"image": "assets/images/Shoe & Bag Care.png", "text": "Shoe & Bag Care"},
  ];

  List<String> dealImages = [
    "https://img.freepik.com/premium-vector/super-deal-text-effect-editable-3d-text-style-suitable-banner-promotion_16148-1552.jpg",
    "https://cdn.vectorstock.com/i/preview-1x/10/75/amazing-deals-sign-over-colorful-cut-out-foil-vector-48291075.jpg",
    // Add more image filenames as needed
  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    List<Widget> dealTexts = [
      buildDealTextContainer(mQuery),
      buildDealTextContainer(mQuery),
    ];

    return Scaffold(
      body: Container(
        color: const Color(0xfff3fbff),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 32, bottom: 25),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/splash.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Builder(
                          builder: (BuildContext context) {
                            return IconButton(
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                              icon: Icon(
                                Icons.menu,
                                size: 42,
                              ),
                              color: Colors.white,
                            );
                          },
                        ),
                        SvgPicture.asset(
                          "assets/images/mainlogo.svg",
                          width: 30,
                          height: 25,
                        ),
                        Expanded(child: SizedBox()),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MyProfilePage();
                                },
                              ),
                            );
                          },
                          child: ProfilePicture(
                            name: "",
                            radius: 18,
                            fontsize: 10,
                            img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwKKzV4oKveaDEmBr38LXuMWTho1d1-mjOOcjau6XJ1A&s",
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welcome back!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: mQuery.size.height*0.0215,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: mQuery.size.width * 0.06,
                          height: mQuery.size.height * 0.06,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "$orderNo",
                              style: TextStyle(
                                color: Colors.cyan,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Text(
                          "Shweta",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: mQuery.size.height*0.028,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        const Icon(
                          Icons.help_outline,
                          color: Colors.white,
                        ),
                        SizedBox(width: mQuery.size.width * 0.02),
                        Text(
                          "Ongoing Orders",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: mQuery.size.height*0.019,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.02),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: mQuery.size.height * 0.06,
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      cursorColor: Colors.grey,
                      controller: searchController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontSize: mQuery.size.height*0.023,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w600,
                        ),
                        suffixIcon: const Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      var item = gridItems[index];
                      return GestureDetector(
                        onTap: () {
                          if (item['text'] == 'Dry Clean') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DryCleanPage()),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => WashPage()),
                            );
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          padding: EdgeInsets.only(top: mQuery.size.height * 0.046),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
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
                          child: Column(
                            children: [
                              Image.asset(
                                item["image"],
                                width: 78,
                                height: 78,
                              ),
                              SizedBox(height: mQuery.size.height * 0.017),
                              Text(
                                item["text"],
                                style: TextStyle(
                                  fontSize: mQuery.size.height*0.022,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: gridItems.length,
                  ),
                  SizedBox(height: mQuery.size.height * 0.032),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: dealImages.asMap().entries.map((entry) {
                        int index = entry.key;
                        String imageName = entry.value;
                        Widget container = dealTexts[index];
                        return Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              width: mQuery.size.width * 1,
                              height: mQuery.size.height * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: NetworkImage(imageName),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Positioned(
                              right: mQuery.size.width * 0.1,
                              bottom: mQuery.size.height * 0.02,
                              child: container,
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildCategoryContainer("Top Rating Vendors", 0),
                          SizedBox(width: mQuery.size.width * 0.026),
                          buildCategoryContainer("Premium vendors", 1),
                          SizedBox(width: mQuery.size.width * 0.026),
                          buildCategoryContainer("Vendors near you", 2),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),

      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
            top: mQuery.size.height*0.007
        ),
        height: mQuery.size.height * 0.1,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/home.png",
                width: mQuery.size.width * 0.075,
                color: _selectedIndex == 0 ? Colors.cyan : Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/drawer-images/shopping-bag.png",
                width: mQuery.size.width * 0.075,
                color: _selectedIndex == 1 ? Colors.cyan : Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/drawer-images/bell.png",
                width: mQuery.size.width * 0.075,
                color: _selectedIndex == 2 ? Colors.cyan : Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/drawer-images/heart.png",
                width: mQuery.size.width * 0.075,
                color: _selectedIndex == 3 ? Colors.cyan : Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/drawer-images/wallet.png",
                width: mQuery.size.width * 0.075,
                color: _selectedIndex == 4 ? Colors.cyan : Colors.black,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDealTextContainer(MediaQueryData mQuery) {
    return Container(
      width: mQuery.size.width * 0.3,
      height: mQuery.size.height * 0.04,
      decoration: BoxDecoration(
        color: Color(0xff29befe),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          "Know More",
          style: TextStyle(
              color: Colors.white,
              fontSize: mQuery.size.height*0.0175,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  Widget buildCategoryContainer(String title, int index) {
    var mQuery = MediaQuery.of(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedContainerIndex = index;
        });
      },
      child: Container(
        width: mQuery.size.width * 0.35,
        height: mQuery.size.height * 0.04,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: selectedContainerIndex == index ? Colors.green : Colors.grey),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: mQuery.size.height*0.015,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}


