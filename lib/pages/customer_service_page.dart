import 'package:cleaneo_user_app/pages/help_page.dart';
import 'package:flutter/material.dart';

class CustomerServicePage extends StatefulWidget {
  const CustomerServicePage({Key? key}) : super(key: key);

  @override
  State<CustomerServicePage> createState() => _CustomerServicePageState();
}

class _CustomerServicePageState extends State<CustomerServicePage> {
  String _feedback = '';
  int maxWordLimit = 140;

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
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HelpPage();
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
                    "Customer Service",
                    style: TextStyle(
                        fontSize: 20,
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
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ContactInfoWidget(
                          icon: Icons.email_outlined,
                          label: "support@cleaneo.com",
                        ),
                        SizedBox(height: mQuery.size.height * 0.04),
                        ContactInfoWidget(
                          icon: Icons.phone_android_outlined,
                          label: "(+91) 9978997899",
                        ),
                        SizedBox(height: mQuery.size.height * 0.03),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width * 0.3),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: mQuery.size.width * 0.05,
                              ),
                              const Text(
                                "OR",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: mQuery.size.width * 0.05,
                              ),
                              const Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.02),
                        Text(
                          "Write to us",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: mQuery.size.height * 0.023),
                        FeedbackContainer(
                          feedback: _feedback,
                          onChanged: (text) {
                            // Limit the feedback to 140 words
                            if (text.length > maxWordLimit) {
                              text = text.substring(0, maxWordLimit);
                            }
                            setState(() {
                              _feedback = text;
                            });
                          },
                        ),
                        SizedBox(height: mQuery.size.height * 0.13),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                              color: Color(0xff29b2fe),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
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

class ContactInfoWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  ContactInfoWidget({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Column(
      children: [
        Container(
          width: mQuery.size.width * 0.15,
          height: mQuery.size.height * 0.06,
          decoration: BoxDecoration(
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
          child: Icon(
            icon,
            color: Colors.cyan,
            size: 30,
          ),
        ),
        SizedBox(height: mQuery.size.height * 0.013),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class FeedbackContainer extends StatelessWidget {
  final String feedback;
  final ValueChanged<String> onChanged;
  final int maxWordLimit = 140;

  FeedbackContainer({required this.feedback, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    int currentWordCount = feedback.isEmpty ? 0 : feedback.split(' ').length;
    int remainingWords = maxWordLimit - currentWordCount;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: mQuery.size.height * 0.17,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            cursorColor: Colors.grey,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            onChanged: onChanged,
            decoration: InputDecoration.collapsed(
              hintText: "",
            ),
            style: TextStyle(color: Colors.black),
          ),
        ),
        SizedBox(height: mQuery.size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '$currentWordCount/140',
              style: TextStyle(
                color: remainingWords >= 0 ? Colors.black : Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
