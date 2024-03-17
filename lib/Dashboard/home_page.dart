import 'package:carousel_slider/carousel_slider.dart';
import 'package:cleaneo_user_app/Dashboard/Notifications/notification_page.dart';
import 'package:cleaneo_user_app/Dashboard/Orders/yourOrders_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wallet/wallet_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wash/Select%20Vendor/chooseVendor_page.dart';
import 'package:cleaneo_user_app/pages/donate.dart';
import 'package:cleaneo_user_app/pages/dryclean_page.dart';
import 'package:cleaneo_user_app/pages/mydrawer.dart';
import 'package:cleaneo_user_app/pages/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bottomNavigationBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  var orderNo = 3;
  int selectedContainerIndex = 0;
  String userName = "Shweta";

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
  ];

  List<Widget> dealTexts = [
    Container(),
    Container(),
  ];

  Map<String, Map<String, String>> topRatingVendors = {
    'Angels Laundry': {'imageUrl': 'https://soji.us/wp-content/uploads/2022/12/Professional-Laundry-Services.jpg', 'distance': '0.5Km'},
    'Clean Sweep': {'imageUrl': 'https://rjkool.com/wp-content/uploads/2021/09/laundry-services.jpg', 'distance': '0.6Km'},
    'Rapid Wash': {'imageUrl': 'https://media.istockphoto.com/id/459292777/photo/laundry-service.jpg?s=612x612&w=0&k=20&c=V-fCS_ZhDA8_sqySt4-twQhovKdDrB9b71WBE_M6k1Q=', 'distance': '1.3Km'}
  };

  Map<String, Map<String, String>> premiumVendors= {
    'EzeeWash': {'imageUrl': 'https://dafgr1y3h3vlw.cloudfront.net/blogimages/1633346616.jpg', 'distance': '1.5Km'},
    'UClean': {'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReLnHHaWj52OqZuombhIZtYd8jSN86XhfnPdDvU7c7CfJQnF1zWgVL_-KUPqIHmX11Ej0&usqp=CAU', 'distance': '1.6Km'},
    'WashApp': {'imageUrl': 'https://prestodrycleaners.com.sg/wp-content/uploads/2020/05/s1-sm-440x270.jpg', 'distance': '1.3Km'}
  };

  Map<String, Map<String, String>> nearVendors= {
    'DhobiLite': {'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqnd6F2UFBRVjttiUs76sBNYGXubdyGS3_kJ5vwlrz99f0ssH8ccR6KHIqphrjxchXokY&usqp=CAU', 'distance': '0.5Km'},
    'Royal Laundry': {'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHhnJkwV_wAxEDZtMVRkZ_41gr19uie5pwDwoC9m9m-xHSdKipCjtPOLErdwYlpy4B6fE&usqp=CAU', 'distance': '0.6Km'},
    'Dry Cleaner': {'imageUrl': 'https://content.jdmagicbox.com/comp/bhubaneshwar/b6/0674px674.x674.140715100143.q8b6/catalogue/maa-adishakti-dry-cleaner-dumduma-bhubaneshwar-dry-cleaners-47wtrls.jpg', 'distance': '0.8Km'}
  };

  Map<String, Map<String, String>> recommendedVendors = {
    'Quick Clean': {'imageUrl': 'https://spotlesswasche.com/wp-content/uploads/2021/05/Team-Small-Compress.webp', 'distance': '1.5Km'},
    'WashX': {'imageUrl': 'https://fabricspa.com/assets/images/fstory.jpg', 'distance': '1.6Km'},
    'WashMart:': {'imageUrl': 'https://lh5.googleusercontent.com/p/AF1QipOJp1Dqv-_sVTfc9hW5HylI_HIx7K9-J-guZhAc=w519-h240-k-no', 'distance': '1.3Km'}
  };

  Map<String, Map<String, String>> averagePriceVendors = {
    'Wassup': {'imageUrl': 'https://assets-global.website-files.com/61e2f1842c4110255682b147/61f7c13f7ed6c03ab4218633_60803c1d2283c690f497f2c7_laundry220110903.jpeg', 'distance': '1.5Km'},
    'LaundroKart': {'imageUrl': 'https://images.squarespace-cdn.com/content/v1/5a0a0b89aeb625c125bb2e1e/1676708862452-HFMO4WQ43HS6I55XQ3KV/unnamed.jpg', 'distance': '1.6Km'},
    'Launderette': {'imageUrl': 'https://static.wixstatic.com/media/2bd1a7_972bf6cc65ba4573bdfe0575a9376998~mv2.jpg/v1/fit/w_2500,h_1330,al_c/2bd1a7_972bf6cc65ba4573bdfe0575a9376998~mv2.jpg', 'distance': '1.3Km'}
  };

  Map<String, Map<String, String>> filteredVendors() {
    if (selectedContainerIndex == 0) {
      return topRatingVendors;
    } else if (selectedContainerIndex == 1) {
      return premiumVendors;
    } else if (selectedContainerIndex == 2){
      return nearVendors;
    }
    else if (selectedContainerIndex == 3) {
        return recommendedVendors;
      }
    else {
      return averagePriceVendors;
    }
  }


  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          buildPage(0),

          if (_selectedIndex == 1) const YourOrdersPage(),
          if (_selectedIndex == 2) const NotificationsPage(),
          if (_selectedIndex == 3) Donate(),
          if (_selectedIndex == 4) const WalletPage(),
        ],
      ),

      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget buildPage(int index) {
    var mQuery = MediaQuery.of(context);


    List<Map<String, dynamic>> sortedGridItems = List.from(gridItems);
    sortedGridItems.sort((a, b) => a['text'].compareTo(b['text']));

    List<Map<String, dynamic>> filteredAndSortedGridItems = [];
    String searchText = searchController.text.toLowerCase();


    sortedGridItems.sort((a, b) {
      if (a['text'] == 'Wash') {
        return -1;
      } else if (b['text'] == 'Wash') {
        return 1;
      } else if (a['text'] == 'Wash & Iron') {
        return -1;
      } else if (b['text'] == 'Wash & Iron') {
        return 1;
      } else if (a['text'] == 'Stream Iron' || a['text'] == 'Dry Clean') {
        return -1;
      } else if (b['text'] == 'Stream Iron' || b['text'] == 'Dry Clean') {
        return 1;
      } else {
        return a['text'].compareTo(b['text']);
      }
    });

    if (searchText.isEmpty) {
      filteredAndSortedGridItems = List.from(sortedGridItems);
    } else {
      filteredAndSortedGridItems = sortedGridItems.where((item) {
        String itemName = item['text'].toLowerCase();
        return itemName.contains(searchText);
      }).toList();
    }


    return Scaffold(
      body: Container(
        color: const Color(0xfff3fbff),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 32, bottom: 22),
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
                                size: mQuery.size.width * 0.09,
                              ),
                              color: Colors.white,
                            );
                          },
                        ),
                        SvgPicture.asset(
                          "assets/images/mainlogo.svg",
                          width: mQuery.size.width * 0.3,
                        ),
                        Expanded(child: SizedBox()),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const MyProfilePage();
                                },
                              ),
                            );
                          },
                          child: const ProfilePicture(
                            name: "",
                            radius: 16,
                            fontsize: 10,
                            img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwKKzV4oKveaDEmBr38LXuMWTho1d1-mjOOcjau6XJ1A&s",
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.023),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welcome back!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: mQuery.size.height * 0.0215,
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return YourOrdersPage();
                            }));
                          },
                          child: Container(
                            width: mQuery.size.width * 0.08,
                            height: mQuery.size.height * 0.025,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                "$orderNo",
                                style: TextStyle(
                                    color: Color(0xff29b2fe),
                                    fontSize: mQuery.size.height*0.015,
                                    fontFamily: 'SatoshiBold'
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Text(
                          userName,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SatoshiBold',
                            fontSize: mQuery.size.height * 0.022,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(
                          Icons.help_outline,
                          color: Colors.white,
                          size: mQuery.size.width * 0.052,
                        ),
                        SizedBox(width: mQuery.size.width * 0.02),
                        Text(
                          "Ongoing Orders",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SatoshiRegular',
                            fontSize: mQuery.size.height * 0.018,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.02),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: mQuery.size.height * 0.055,
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
                          fontSize: mQuery.size.height * 0.02,
                          color: Colors.grey.shade600,
                          fontFamily: 'SatoshiMedium',
                        ),
                        suffixIcon: Icon(Icons.search,
                          color: Colors.black54,
                        size: mQuery.size.height*0.028,),
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
                      crossAxisCount: 3,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      var item = filteredAndSortedGridItems[index];
                      return GestureDetector(
                        onTap: () {
                          if (item['text'] == 'Dry Clean') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DryCleanPage()),
                            );
                          } else if (item['text'] == 'Wash') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChooseVendorPage()),
                            );
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 12,right: 12,bottom: 20
                          ),
                          padding: EdgeInsets.only(top: mQuery.size.height * 0.02), // Adjust width as needed
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
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
                                width: mQuery.size.width * 0.15, // Adjust image width
                                height: mQuery.size.height * 0.07, // Adjust image height
                              ),
                              SizedBox(height: mQuery.size.height * 0.006),
                              Text(
                                item["text"],
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.014,
                                    fontFamily: 'SatoshiBold'
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: filteredAndSortedGridItems.length,
                  ),
                  SizedBox(height: mQuery.size.height*0.016),


                  CarouselSlider(
                    options: CarouselOptions(
                      height: mQuery.size.height * 0.16,
                      viewportFraction: 0.935,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: dealImages.map((imageName) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Stack(
                            children: [
                              Container(
                                width: mQuery.size.width * 0.935,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                    image: NetworkImage(imageName),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                              // Blue Container
                              Positioned(
                                bottom: mQuery.size.height*0.015,
                                right: mQuery.size.width*0.07,
                                child: Container(
                                  height: mQuery.size.height * 0.035,
                                  width: mQuery.size.width*0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xff29b2fe)
                                  ),
                                  child: Center(
                                    child: Text("Know More",style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'SatoshiBold',
                                        fontSize: mQuery.size.height*0.016
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),



                  SizedBox(height: mQuery.size.height * 0.035),
                  Padding(
                    padding: EdgeInsets.symmetric(),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 12
                        ),
                        child: Row(
                          children: [
                            buildCategoryContainer("Top Rating Vendors", 0),
                            SizedBox(width: mQuery.size.width * 0.026),
                            buildCategoryContainer("Premium vendors", 1),
                            SizedBox(width: mQuery.size.width * 0.026),
                            buildCategoryContainer("Vendors near you", 2),
                            SizedBox(width: mQuery.size.width * 0.026),
                            buildCategoryContainer("Recommended vendors", 3),
                            SizedBox(width: mQuery.size.width * 0.026),
                            buildCategoryContainer("Average Priced Vendors", 4),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.03,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: List.generate(filteredVendors().length, (index) {
                      String companyName = filteredVendors().keys.elementAt(index);
                      var imageUrl = filteredVendors().values.elementAt(index)['imageUrl'];
                      var distance = filteredVendors().values.elementAt(index)['distance'];
                      return Padding(
                        padding: EdgeInsets.only(right: mQuery.size.width * 0.035),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ChooseVendorPage();
                            }));
                          },
                          child: Container(
                            width: mQuery.size.width * 0.36,
                            height: mQuery.size.height * 0.18,
                            padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.035),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 7,
                                  offset: Offset(0, 0),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: mQuery.size.height * 0.006),
                                  Container(
                                    width: double.infinity,
                                    height: mQuery.size.height * 0.06,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(imageUrl!),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  SizedBox(height: mQuery.size.height * 0.01),
                                  Row(
                                    children: [
                                      Text(
                                        distance!,
                                        style: TextStyle(fontFamily: 'SatoshiMedium', fontSize: mQuery.size.height * 0.014),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Container(
                                        width: mQuery.size.width * 0.12,
                                        height: mQuery.size.height * 0.02,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: Color(0xff80cc33),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.star, color: Colors.white, size: mQuery.size.width * 0.036),
                                                SizedBox(width: mQuery.size.width * 0.01),
                                                Text(
                                                  "4.5", // You can replace this with dynamic rating
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: mQuery.size.height * 0.0125,
                                                    fontFamily: 'SatoshiMedium',
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: mQuery.size.height * 0.01),
                                  Text(
                                    companyName,
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.014,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  SizedBox(height: mQuery.size.height * 0.01),
                                  Container(
                                    width: double.infinity,
                                    height: mQuery.size.height * 0.03,
                                    decoration: BoxDecoration(
                                      color: Color(0xff29b2fe),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "View Details",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SatoshiMedium',
                                          fontSize: mQuery.size.height * 0.013,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),),
                  SizedBox(height: mQuery.size.height*0.02,)
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
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
        width: mQuery.size.width * 0.4,
        height: mQuery.size.height * 0.036,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: selectedContainerIndex == index ? Color(0xffededed) : Colors.white,
          border: Border.all(
              color: selectedContainerIndex == index ? Color(0xffbcbcbc) : Colors.grey),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: mQuery.size.height * 0.013,
                fontFamily: 'SatoshiMedium'),
          ),
        ),
      ),
    );
  }

}



