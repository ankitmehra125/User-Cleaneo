import 'package:flutter/material.dart';
import 'package:cleaneo_user_app/pages/byweight_page.dart';
import 'package:cleaneo_user_app/pages/quantity_wise_page.dart';

class WashPage extends StatefulWidget {
  const WashPage({Key? key}) : super(key: key);

  @override
  State<WashPage> createState() => _WashPageState();
}

class _WashPageState extends State<WashPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

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
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006acb),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: const EdgeInsets.only(
                  top: 45, left: 16, right: 16, bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Navigate back to previous page
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  SizedBox(width: mQuery.size.width * 0.045,),
                  Text("Wash", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  ),)
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)
                      ),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      tabs: [
                        Tab(text: "Quantity Wise"),
                        Tab(text: "By Weight"),
                      ],
                      labelColor: Color(0xff29b2fe), // Set the selected tab text color
                      indicatorColor: Color(0xff29b2fe), // Set the width of the tab line
                      labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        QuantityWisePage(),
                        ByWeightPage(),
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
}
