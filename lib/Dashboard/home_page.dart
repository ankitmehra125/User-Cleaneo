import 'package:carousel_slider/carousel_slider.dart';
import 'package:cleaneo_user_app/Dashboard/Notifications/notification_page.dart';
import 'package:cleaneo_user_app/Dashboard/Orders/yourOrders_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wallet/wallet_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wash/Select%20Vendor/chooseVendor_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wash/Select%20Vendor/vendorDetails_page.dart';
import 'package:cleaneo_user_app/pages/donate.dart';
import 'package:cleaneo_user_app/pages/dryclean_page.dart';
import 'package:cleaneo_user_app/pages/mydrawer.dart';
import 'package:cleaneo_user_app/pages/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  final List<Map<String, String>> topRatingImages = [
    {
      'url':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0EYoY-H9MMIQshuoWF2SvIdPzKM-T2qTmiAR3iWMOYWtxMfyyrOxed5bhRMQ9RL4sIL8&usqp=CAU'
    },
    {
      'url':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNNHJCY1c6nVDOhZ9Z6FFbRe0wp1eTSLg6_3QSGrzMk1fn6kaef8mCvl9guXkmuaHgoVc&usqp=CAU'
    },
    {
      'url': 'https://www.alldoneasiatic.com/images/franchise2.jpeg'
    },
    {
      'url':
      'https://5.imimg.com/data5/IOS/Default/2022/6/HB/GN/LB/13960705/product-jpeg-500x500.png'
    },
    {
      'url':
      'https://5.imimg.com/data5/SELLER/Default/2023/6/320929198/OB/XU/OK/8658564/laundry-dry-cleaning-service-500x500.jpg'
    },
  ];

  final List<Map<String, String>> premiumImages = [
    {
      'url':
      'https://i0.wp.com/www.fabonow.com/wp-content/uploads/2023/09/Best-DryCleaning-Services.webp?fit=800%2C533&ssl=1'
    },
    {
      'url':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIJSKITE8dokBnWF2P3QkFW6g3sCRnfYdWid0dA2CJTaL53pjM7RMFoCIw6vxDJhG-tho&usqp=CAU'
    },
    {
      'url': 'https://media-cldnry.s-nbcnews.com/image/upload/newscms/2023_05/1963367/230201-laundry-stripping-kb-2x1.jpg'
    },
    {
      'url':
      'https://reviewed-com-res.cloudinary.com/image/fetch/s--WtXrjxpt--/b_white,c_limit,cs_srgb,f_auto,fl_progressive.strip_profile,g_center,q_auto,w_972/https://reviewed-production.s3.amazonaws.com/1631217092181/tipslaundryhero.png'
    },
    {
      'url':
      'https://media.cnn.com/api/v1/images/stellar/prod/210915133905-how-to-do-laundry-lead.jpg?q=w_1601,h_901,x_0,y_0,c_fill'
    },
  ];

  final List<Map<String, String>> nearImages = [
    {
      'url':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqnd6F2UFBRVjttiUs76sBNYGXubdyGS3_kJ5vwlrz99f0ssH8ccR6KHIqphrjxchXokY&usqp=CAU'
    },
    {
      'url':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHhnJkwV_wAxEDZtMVRkZ_41gr19uie5pwDwoC9m9m-xHSdKipCjtPOLErdwYlpy4B6fE&usqp=CAU'
    },
    {
      'url': 'https://content.jdmagicbox.com/comp/bhubaneshwar/b6/0674px674.x674.140715100143.q8b6/catalogue/maa-adishakti-dry-cleaner-dumduma-bhubaneshwar-dry-cleaners-47wtrls.jpg'
    },
    {
      'url':
      'https://content3.jdmagicbox.com/comp/kolhapur/q6/0231px231.x231.150811191638.a7q6/catalogue/students-laundry-station-road-kolhapur-dry-cleaners-8wap5.jpg?clr='
    },
    {
      'url':
      'https://content.jdmagicbox.com/comp/bhopal/n4/0755px755.x755.170605134621.e6n4/catalogue/deepak-drycleaners-tulsi-nagar-bhopal-dry-cleaners-073hnrn4wn-250.jpg?clr='
    },
  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    List<Widget> dealTexts = [
      buildDealTextContainer(mQuery),
      buildDealTextContainer(mQuery),
    ];

    List<List<Map<String, String>>> imageLists = [
      topRatingImages,
      premiumImages,
      nearImages,
    ];

    return Scaffold(
      body: Stack(
        children: [
          buildPage(0, imageLists[selectedContainerIndex]),

          if (_selectedIndex == 1) const YourOrdersPage(),
          if (_selectedIndex == 2) const NotificationsPage(),
          if (_selectedIndex == 3) Donate(),
          if (_selectedIndex == 4) const WalletPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
              color: _selectedIndex == 0 ? const Color(0xff29b2fe) : Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/drawer-images/shopping-bag.png",
              width: mQuery.size.width * 0.075,
              color: _selectedIndex == 1 ? const Color(0xff29b2fe) : Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/drawer-images/bell.png",
              width: mQuery.size.width * 0.075,
              color: _selectedIndex == 2 ? const Color(0xff29b2fe) : Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/drawer-images/heart.png",
              width: mQuery.size.width * 0.075,
              color: _selectedIndex == 3 ? const Color(0xff29b2fe) : Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/drawer-images/wallet.png",
              width: mQuery.size.width * 0.075,
              color: _selectedIndex == 4 ? const Color(0xff29b2fe) : Colors.black,
            ),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget buildPage(int index, List<Map<String, String>> images) {
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
        return -1; // "Stream Iron" and "Dry Clean" will appear before other items
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
                                size: mQuery.size.width * 0.1,
                              ),
                              color: Colors.white,
                            );
                          },
                        ),
                        SvgPicture.asset(
                          "assets/images/mainlogo.svg",
                          width: mQuery.size.width * 0.33,
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
                            radius: 18,
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
                            fontSize: mQuery.size.height * 0.025,
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
                          fontSize: mQuery.size.height * 0.0215,
                          color: Colors.grey.shade600,
                          fontFamily: 'SatoshiMedium',
                        ),
                        suffixIcon: const Icon(Icons.search,
                          color: Colors.black54,),
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
                                    fontSize: mQuery.size.height * 0.02,
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
                  SizedBox(height: mQuery.size.height * 0.032),


                  CarouselSlider(
                    options: CarouselOptions(
                      height: mQuery.size.height * 0.2,
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
                          return Container(
                            width: mQuery.size.width * 0.935,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(imageName),
                                fit: BoxFit.fill,
                              ),
                            ),
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
                        children: images
                            .map((image) => Padding(
                          padding:  EdgeInsets.only(
                              right: mQuery.size.width*0.035
                          ),
                          child: GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return VendorDetailsPage();
                              }));
                            },
                            child: Container(
                              width: mQuery.size.width * 0.22,
                              height: mQuery.size.height * 0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      image['url']!),
                                  fit: BoxFit.cover,
                                ),),
                            ),
                          ),
                        ),)
                            .toList(),
                      ),
                    ),
                  ),
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
              fontSize: mQuery.size.height * 0.0175,
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
          color: selectedContainerIndex == index ? Color(0xffededed) : Colors.white,
          border: Border.all(
              color: selectedContainerIndex == index ? Color(0xffbcbcbc) : Colors.grey),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: mQuery.size.height * 0.014,
                fontFamily: 'SatoshiMedium'),
          ),
        ),
      ),
    );
  }
}
