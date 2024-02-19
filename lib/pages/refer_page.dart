import 'package:cleaneo_user_app/Help/help_page.dart';
import 'package:cleaneo_user_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class ReferPage extends StatefulWidget {
  const ReferPage({Key? key}) : super(key: key);

  @override
  State<ReferPage> createState() => _ReferPageState();
}

class _ReferPageState extends State<ReferPage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    var refer = "CLEANEO12345678";
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.045,
                  ),
                  Text(
                    "Refer a Friend",
                    style: TextStyle(
                        fontSize: mQuery.size.height*0.027,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 1,
                      offset:
                      Offset(3, 3), // changes the position of the shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding:  EdgeInsets.only(
                    top: mQuery.size.height*0.03,
                    left: mQuery.size.width*0.045,
                    right: mQuery.size.width*0.045,
                  ),
                  child: Column(
                    children: [
                      Text("Refer CLEANEO to a \nfriend & get 10% OFF",
                      style: TextStyle(
                        fontSize: mQuery.size.height*0.024,
                        fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: mQuery.size.height*0.03,),
                      Text("Invite a friend to CLEANEO & the enjoy \n the discount on any one of your "
                          "orders \n         on 1st order of your friend",
                      style: TextStyle(
                        fontSize: mQuery.size.height*0.018,
                        color: Colors.black54
                      ),),
                      Image.asset("assets/images/enjoy.png"),
                      SizedBox(height: mQuery.size.height*0.055,),
                      Text("Share your referal code",style: TextStyle(
                        fontSize: mQuery.size.height*0.02,
                        fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: mQuery.size.height*0.08,),
                      Container(
                        width: double.infinity,
                        height: mQuery.size.height*0.06,
                        decoration: BoxDecoration(
                          color: Color(0xff29b2fe),
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.share,color: Colors.white,),
                            SizedBox(width: mQuery.size.width*0.035,),
                            Text("$refer",style: TextStyle(
                              color: Colors.white,
                              fontSize: mQuery.size.height*0.024,
                              fontWeight: FontWeight.w600
                            ),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
