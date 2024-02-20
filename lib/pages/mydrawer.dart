import 'package:cleaneo_user_app/pages/address_page.dart';
import 'package:cleaneo_user_app/pages/donate.dart';
import 'package:cleaneo_user_app/Help/help_page.dart';
import 'package:cleaneo_user_app/Dashboard/home_page.dart';
import 'package:cleaneo_user_app/Payment/manage_cards_page.dart';
import 'package:cleaneo_user_app/pages/myprofile.dart';
import 'package:cleaneo_user_app/pages/refer_page.dart';
import 'package:cleaneo_user_app/pages/review_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    var versionNo= 1.1;
    return Drawer(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Color(0xfff3fbff),
              height: mQuery.size.height*0.15,
              child: Column(
                children: [
                  SizedBox(height: mQuery.size.height*0.058),
                  GestureDetector(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return MyProfilePage();
                              }));
                            },
                            child: ProfilePicture(
                              name: "",
                              radius: 20,
                              fontsize: 10,
                              img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwKKzV4oKveaDEmBr38LXuMWTho1d1-mjOOcjau6XJ1A&s",
                            ),
                          ),
                          SizedBox(width: mQuery.size.width*0.024,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(height: mQuery.size.height*0.02,),
                                  Text("Shweta Somaiya",style: TextStyle(
                                      fontSize: mQuery.size.height*0.022,
                                      fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(width: mQuery.size.width*0.2,),
                                  GestureDetector(
                                      onTap: ()
                                      {
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return MyProfilePage();
                                        }));
                                      },
                                      child: Image.asset("assets/images/drawer-images/edit.png",color: Color(0xff29b2fe),
                                          width: mQuery.size.width*0.06),)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.phone_android,
                                      size: mQuery.size.width*0.05,),
                                  Text("(+91) 9978997899",style: TextStyle(
                                    fontSize: mQuery.size.height*0.0195,
                                  ),),
                                  SizedBox(width: mQuery.size.width*0.02,),
                                  Container(
                                    width: mQuery.size.width*0.04,
                                    height: mQuery.size.height*0.04,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 10,
                      offset: Offset(3, 3), // changes the position of the shadow
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return HomePage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/dashboard.png",color: Color(0xff29b2fe),
                              width: mQuery.size.width*0.065),
                          title: Text("Dashboard",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                          ),
                           ),
                        )
                      ),

                      ListTile(
                        leading: Image.asset("assets/images/drawer-images/shopping-bag.png",color: Color(0xff29b2fe),
                            width: mQuery.size.width*0.06),
                        title: Text("Your Orders",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                        ),),
                      ),

                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return AddressPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/location_icon.png",color: Color(0xff29b2fe),
                              width: mQuery.size.width*0.06),
                          title: Text("Address Book",style: TextStyle(
                              fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/images/drawer-images/bell.png",color: Color(0xff29b2fe),
                            width: mQuery.size.width*0.06),
                        title: Text("Notifications",style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: mQuery.size.height*0.0212,
                        ),),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Donate();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/heart.png",color: Color(0xff29b2fe),
                              width: mQuery.size.width*0.06),
                          title: Text("Donate",style: TextStyle(
                              fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/images/drawer-images/wallet.png",color: Color(0xff29b2fe),
                            width: mQuery.size.width*0.06),
                        title: Text("Wallet",style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: mQuery.size.height*0.0212,
                        ),),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ManageCardsPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/credit-card.png",color: Color(0xff29b2fe),
                              width: mQuery.size.width*0.06),
                          title: Text("Manage Cards",style: TextStyle(
                              fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/images/drawer-images/offers.png",color: Color(0xff29b2fe),
                            width: mQuery.size.width*0.06),
                        title: Text("Offers",style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: mQuery.size.height*0.0212,
                        ),),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ReferPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/gift.png",color: Color(0xff29b2fe),
                              width: mQuery.size.width*0.06),
                          title: Text("Refer and Earn",style: TextStyle(
                              fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ReviewPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/star.png",color: Color(0xff29b2fe),
                              width: mQuery.size.width*0.06),
                          title: Text("Reviews",style: TextStyle(
                              fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return HelpPage();
                          }));
                        },
                        child: ListTile(
                          leading: Image.asset("assets/images/drawer-images/help.png",color: Color(0xff29b2fe),
                              width: mQuery.size.width*0.06),
                          title: Text("Help",style: TextStyle(
                              fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(
                top: mQuery.size.height*0.02
              ),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*0.045
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      width: double.infinity,
                      height: mQuery.size.height*0.04,
                      child:  Center(
                        child: Text("Join us as a partner",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mQuery.size.height*0.02,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),
                  ),
                  const Divider(color: Colors.grey,
                    thickness: 0.5,),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*0.045
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap : ()
                                  {

                                  },
                                  child: Text("Sign Out",style: TextStyle(
                                      fontSize: mQuery.size.height*0.022,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600
                                  ),),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.0075,),
                        Text("CLEANEO V$versionNo",style: TextStyle(
                          fontSize: mQuery.size.height*0.016,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}