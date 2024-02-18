import 'package:cleaneo_user_app/pages/help_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  var userName = "Shweta";
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
            SizedBox(height: mQuery.size.height * 0.0347),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height*0.058,
                bottom: mQuery.size.height*0.03,
                left: mQuery.size.width*0.045,
                right: mQuery.size.width*0.045,
              ),
              child: GestureDetector(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //       return HelpPage();
                        //     }));
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: mQuery.size.width * 0.045,
                    ),
                   Text("Rate Your Experience",
                    style: TextStyle(
                      fontSize: mQuery.size.height*0.027,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                    ),)
                  ],
                ),
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
                  padding:  EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.045
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: mQuery.size.height*0.03,),
                        Text("Hey $userName! Let us know about \n     your "
                            "experience with us.",style: TextStyle(
                          fontSize: mQuery.size.height*0.02,
                          fontWeight: FontWeight.w600
                        ),),
                        SizedBox(height: mQuery.size.height*0.055,),
                        SvgPicture.asset("assets/images/mainlogo.svg",
                         color: Colors.black,
                         height: mQuery.size.height*0.037,
                        ),
                        SizedBox(height: mQuery.size.height*0.045,),
                         RatingBar.builder(
                           initialRating: 0,
                           minRating: 0,
                           direction: Axis.horizontal,
                           allowHalfRating: true,
                           itemCount: 5,
                           itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                           itemBuilder: (context, _) => Icon(
                             Icons.star,
                             color: Color(0xff29b2fe),
                           ),
                         onRatingUpdate: (rating) {
                            print(rating);
                      },
                    ),
                        SizedBox(height: mQuery.size.height*0.055,),
                        Row(
                          children: [
                            Text("Message",style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: mQuery.size.height*0.022
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.02,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height*0.175,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.3,
                                blurRadius: 10,
                                offset: Offset(0,0), // changes the position of the shadow
                              ),
                            ],
                          ),
                          child: TextField(
                            cursorColor: Colors.black54,
                            maxLines: null,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Write message here",
                              hintStyle: TextStyle(
                                fontSize: mQuery.size.height*0.02,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 8)
                            ),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.1,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/images/alert.svg",
                              width: mQuery.size.width*0.058,),
                            SizedBox(width: mQuery.size.width*0.033,),
                            Text("Report Dispute",style: TextStyle(
                              fontSize: mQuery.size.height*0.02,
                              color: Colors.red,
                              fontWeight: FontWeight.w600
                            ),)
                          ],
                        ),
                        SizedBox(height: mQuery.size.height*0.065,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height*0.06,
                          decoration: BoxDecoration(
                            color: Color(0xff29b2fe),
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Center(
                            child: Text("Submit",style: TextStyle(
                              fontSize: mQuery.size.height*0.024,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                            ),),
                          ),
                        )
                      ],
                    ),
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
