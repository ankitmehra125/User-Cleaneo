import 'package:cleaneo_user_app/pages/mydrawer.dart';
import 'package:flutter/material.dart';

class TrackOrderPage extends StatefulWidget {
  const TrackOrderPage({Key? key}) : super(key: key);

  @override
  State<TrackOrderPage> createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/maps.png"),
            fit: BoxFit.fill
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mQuery.size.height * 0.07),
            Padding(
              padding: EdgeInsets.only(
                left: mQuery.size.height*0.02
              ),
              child: GestureDetector(
                onTap: ()
                  {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  child: Icon(Icons.menu)),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height*0.23
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: mQuery.size.width*0.045
                            ),
                            child: Text(
                              "Track Order",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(height: mQuery.size.height * 0.02),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width * 0.045,
                            ),
                            child: Column(
                              children: [
                                // Order Placed
                                Row(
                                  children: [
                                    Container(
                                      width: mQuery.size.width * 0.08,
                                      height: mQuery.size.height * 0.05,
                                      decoration: BoxDecoration(
                                        color: Color(0xff29b2fe),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.lock,
                                          color: Colors.white,
                                          size: mQuery.size.width * 0.04,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.03),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order Placed",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "Lorem Ipsum is a dummy text",
                                          style: TextStyle(color: Colors.black54,
                                          fontSize: 12),
                                        )
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Column(
                                      children: [
                                        Text("18th July 2023",style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12
                                        ),),
                                        Text("8:09 pm",style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                                Divider(),
                                SizedBox(height: mQuery.size.height * 0.02),

                                // Order Picked
                                Row(
                                  children: [
                                    Container(
                                      width: mQuery.size.width * 0.08,
                                      height: mQuery.size.height * 0.05,
                                      decoration: BoxDecoration(
                                        color: Color(0xff29b2fe),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.lock,
                                          color: Colors.white,
                                          size: mQuery.size.width * 0.04,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.03),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order Picked",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "Lorem Ipsum is a dummy text",
                                          style: TextStyle(color: Colors.black54,
                                          fontSize: 12),
                                        )
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Column(
                                      children: [
                                        Text("18th July 2023",style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12
                                        ),),
                                        Text("8:09 pm",style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                                Divider(),
                                SizedBox(height: mQuery.size.height * 0.02),

                                // Order in Process
                                Row(
                                  children: [
                                    Container(
                                      width: mQuery.size.width * 0.08,
                                      height: mQuery.size.height * 0.05,
                                      decoration: BoxDecoration(
                                        color: Color(0xff29b2fe),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.lock,
                                          color: Colors.white,
                                          size: mQuery.size.width * 0.04,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.03),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order in Process",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "Lorem Ipsum is a dummy text",
                                          style: TextStyle(color: Colors.black54,
                                            fontSize: 12),
                                        )
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Column(
                                      children: [
                                        Text("18th July 2023",style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12
                                        ),),
                                        Text("8:09 pm",style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                                Divider(),
                                SizedBox(height: mQuery.size.height * 0.02),


                                // Order on its way
                                Row(
                                  children: [
                                    Container(
                                      width: mQuery.size.width * 0.08,
                                      height: mQuery.size.height * 0.05,
                                      decoration: BoxDecoration(
                                        color: Color(0xff29b2fe),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.lock,
                                          color: Colors.white,
                                          size: mQuery.size.width * 0.04,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.03),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order on its way",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff009c1a),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "Lorem Ipsum is a dummy text",
                                          style: TextStyle(
                                            fontSize: 12
                                          ),
                                        )
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Column(
                                      children: [
                                        Text("18th July 2023",style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12
                                        ),),
                                        Text("8:09 pm",style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                                Divider(),
                                SizedBox(height: mQuery.size.height * 0.02),

                                // Order Delivered
                                Row(
                                  children: [
                                    Container(
                                      width: mQuery.size.width * 0.08,
                                      height: mQuery.size.height * 0.05,
                                      decoration: BoxDecoration(
                                        color: Color(0xff29b2fe),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.lock,
                                          color: Colors.white,
                                          size: mQuery.size.width * 0.04,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: mQuery.size.width * 0.03),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order Delivered",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "Lorem Ipsum is a dummy text",
                                          style: TextStyle(color: Colors.black54,
                                            fontSize: 12),
                                        )
                                      ],
                                    ),
                                    Expanded(child: SizedBox()),
                                    Column(
                                      children: [
                                        Text("18th July 2023",style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12
                                        ),),
                                        Text("ETA : 8:30 pm",style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                                Divider(),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
