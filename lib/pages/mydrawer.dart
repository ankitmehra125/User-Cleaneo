import 'package:cleaneo_user_app/pages/donate.dart';
import 'package:cleaneo_user_app/pages/help_page.dart';
import 'package:cleaneo_user_app/pages/home_page.dart';
import 'package:cleaneo_user_app/pages/manage_cards_page.dart';
import 'package:cleaneo_user_app/pages/myprofile.dart';
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
              padding: EdgeInsets.only(right: 4,left: 10),
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
                                  SizedBox(width: mQuery.size.width*0.22,),
                                  GestureDetector(
                                      onTap: ()
                                      {
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return MyProfilePage();
                                        }));
                                      },
                                      child: Icon(Icons.edit,color: Colors.cyan,)),
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
                          leading: Icon(Icons.dashboard,color: Colors.cyan,),
                          title: Text("Dashboard",style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.shopping_bag_outlined,color: Colors.cyan,),
                        title: Text("Your Orders",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                        ),),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on_outlined,color: Colors.cyan,),
                        title: Text("Address Book",style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: mQuery.size.height*0.0212,
                        ),),
                      ),
                      ListTile(
                        leading: Icon(Icons.notifications_none_sharp,color: Colors.cyan,),
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
                          leading: Icon(Icons.favorite_border,color: Colors.cyan),
                          title: Text("Donate",style: TextStyle(
                              fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.wallet_travel_rounded,color: Colors.cyan),
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
                          leading: Icon(Icons.credit_card,color: Colors.cyan),
                          title: Text("Manage Cards",style: TextStyle(
                              fontWeight: FontWeight.w600,
                            fontSize: mQuery.size.height*0.0212,
                          ),),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.local_offer,color: Colors.cyan),
                        title: Text("Offers",style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: mQuery.size.height*0.0212,
                        ),),
                      ),
                      ListTile(
                        leading: Icon(Icons.card_giftcard,color: Colors.cyan),
                        title: Text("Refer and Earn",style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: mQuery.size.height*0.0212,
                        ),),
                      ),
                      ListTile(
                        leading: Icon(Icons.star_border_outlined,color: Colors.cyan),
                        title: Text("Reviews",style: TextStyle(
                            fontWeight: FontWeight.w600,
                          fontSize: mQuery.size.height*0.0212,
                        ),),
                      ),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return HelpPage();
                          }));
                        },
                        child: ListTile(
                          leading: Icon(Icons.help_outline,color: Colors.cyan),
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
              padding: EdgeInsets.only(top: 20),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            TextButton(
                              onPressed: ()
                              {

                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Sign Out",style: TextStyle(
                                      fontSize: mQuery.size.height*0.022,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text("CLEANEO V$versionNo",style: TextStyle(
                            fontSize: mQuery.size.height*0.018,
                          ),),
                        ),
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