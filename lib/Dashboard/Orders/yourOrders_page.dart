import 'package:cleaneo_user_app/Dashboard/Orders/ongoingOrders_page.dart';
import 'package:cleaneo_user_app/Dashboard/Orders/previousOrders_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
import 'package:cleaneo_user_app/pages/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:cleaneo_user_app/Dashboard/Wash/byweight_page.dart';
import 'package:cleaneo_user_app/Dashboard/Wash/quantity_wise_page.dart';

class YourOrdersPage extends StatefulWidget {
  const YourOrdersPage({Key? key}) : super(key: key);

  @override
  State<YourOrdersPage> createState() => _YourOrdersPageState();
}

class _YourOrdersPageState extends State<YourOrdersPage> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;
  bool _isDropdownOpen = false;
  int _selectedRowIndex = -1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
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
                                _scaffoldKey.currentState!.openDrawer();
                              },
                              child: Icon(Icons.menu, color: Colors.white,
                               size: mQuery.size.height*0.04,),
                            ),
                            SizedBox(width: mQuery.size.width * 0.045),
                            Row(
                              children: [
                                Text(
                                  "Your Orders",
                                  style: TextStyle(
                                      fontSize: mQuery.size.height*0.027,
                                      color: Colors.white,
                                    fontFamily: 'SatoshiBold',),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                        ),
                        child: TabBar(
                          controller: _tabController,
                          tabs: [
                            Tab(text: "Ongoing",),
                            Tab(text: "Previous"),
                          ],
                          labelColor: Color(0xff29b2fe),
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Color(0xff29b2fe),
                          labelStyle: TextStyle(
                              fontSize: mQuery.size.height*0.023
                              , fontFamily: 'SatoshiBold',),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: mQuery.size.height,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            OngoingOrdersPage(),
                            PreviousOrdersPage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
