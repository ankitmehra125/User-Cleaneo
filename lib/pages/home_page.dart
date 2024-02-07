import 'package:cleaneo_user_app/pages/mydrawer.dart';
import 'package:cleaneo_user_app/pages/myprofile.dart';
import 'package:cleaneo_user_app/pages/wash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
// Import WashPage.dart

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  var orderNo = 3;
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> gridItems = [
    {"image": "assets/images/Wash.png", "text": "Wash"},
    {"image": "assets/images/Wash & Iron.png", "text": "Wash & Iron"},
    {"image": "assets/images/Steam Iron.png", "text": "Stream Iron"},
    {"image": "assets/images/Dry Clean.png", "text": "Dry Clean"},
    {"image": "assets/images/Premium Wash.png", "text": "Premium Wash"},
    {"image": "assets/images/Shoe & Bag Care.png", "text": "Shoe & Bag Care"},
  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xfff3fbff),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 32, bottom: 25),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      // color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage("assets/images/splash.jpg"),
                        fit: BoxFit.cover,
                      )),
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
                            // Profile Picture
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
                                img:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwKKzV4oKveaDEmBr38LXuMWTho1d1-mjOOcjau6XJ1A&s",
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
                            const Text(
                              "Welcome back!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              width: mQuery.size.width * 0.06,
                              height: mQuery.size.height * 0.06,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "$orderNo",
                                  style: TextStyle(
                                      color: Colors.cyan,
                                      fontWeight: FontWeight.w600),
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
                            const Text(
                              "Shweta",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            Expanded(child: SizedBox()),
                            const Icon(
                              Icons.help_outline,
                              color: Colors.white,
                            ),
                            SizedBox(width: mQuery.size.width * 0.02),
                            const Text(
                              "Ongoing Orders",
                              style: TextStyle(color: Colors.white, fontSize: 14),
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
                            borderRadius: BorderRadius.circular(12)),
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
                              suffixIcon:
                              const Icon(Icons.search, color: Colors.grey)),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Set the number of items in each row
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      var item = gridItems[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WashPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          padding:
                          EdgeInsets.only(top: mQuery.size.height * 0.046),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 0), // changes the position of the shadow
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
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: gridItems.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 6),
        height: mQuery.size.height * 0.1,
        child: BottomNavigationBar(
          iconSize: 30,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff29befe),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.bag), label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bell), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ""),
          ],
        ),
      ),
    );
  }
}
