import 'package:flutter/material.dart';

import '../Constants/CustomColor.dart';
import '../Constants/CustomWidgets.dart';

class CustomerProfile extends StatefulWidget {
  const CustomerProfile({Key? key}) : super(key: key);

  @override
  State<CustomerProfile> createState() => _CustomerProfileState();
}

class _CustomerProfileState extends State<CustomerProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60 + 285),
            child: FixAppBar(
              leddingicon: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
              ),
              PageName: "Customer Profile",
              profile: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: CustomColors.Secondary,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        margin: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 30,
                          bottom: 30,
                        ),
                        height: 120,
                        width: 120,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/services/renovation.jpg"),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      "Shahid Company",
                      style: TextStyle(
                        fontSize: 35,
                        color: CustomColors.Secondary2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Container(
                    child: TabBar(
                      indicatorColor: CustomColors.Primary,
                      onTap: (index) {},
                      tabs: [
                        Tab(
                          child: Text(
                            "Details",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "About",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Feedback",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              CustomerProfileDetails(),
              CustomerProfileAbout(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 5),
                            color: Colors.black12,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: CustomColors.Secondary,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/services/renovation.jpg"),
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Shahid Company",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: CustomColors.Secondary,
                                  ),
                                ),
                                Text(
                                  "Shahid Renovation Work",
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xff565455),
                                  ),
                                ),
                                Text(
                                  "Shahid Company",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff565455),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Service Provider Feedback",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Show and work with\nAwesome",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: CustomColors.Secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 5),
                            color: Colors.black12,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: CustomColors.Secondary,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/services/renovation.jpg"),
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Shahid Company",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: CustomColors.Secondary,
                                  ),
                                ),
                                Text(
                                  "Shahid Renovation Work",
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xff565455),
                                  ),
                                ),
                                Text(
                                  "Shahid Company",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff565455),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Service Provider Feedback",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Show and work with\nAwesome",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: CustomColors.Secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 5),
                            color: Colors.black12,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: CustomColors.Secondary,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/services/renovation.jpg"),
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Shahid Company",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: CustomColors.Secondary,
                                  ),
                                ),
                                Text(
                                  "Shahid Renovation Work",
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xff565455),
                                  ),
                                ),
                                Text(
                                  "Shahid Company",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff565455),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Service Provider Feedback",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Show and work with\nAwesome",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: CustomColors.Secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 30, right: 30),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 5),
                            color: Colors.black12,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: CustomColors.Secondary,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            margin: EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/services/renovation.jpg"),
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Shahid Company",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: CustomColors.Secondary,
                                  ),
                                ),
                                Text(
                                  "Shahid Renovation Work",
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xff565455),
                                  ),
                                ),
                                Text(
                                  "Shahid Company",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff565455),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Service Provider Feedback",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Show and work with\nAwesome",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: CustomColors.Secondary,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomerProfileDetails extends StatelessWidget {
  const CustomerProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    top: 20,
                    bottom: 5,
                  ),
                  child: Text("Name"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xffee1a92),
                ),
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffDFE9F5),
                    Colors.white,
                  ],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            "Shaid Saeed",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    top: 10,
                    bottom: 5,
                  ),
                  child: Text("Address"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xffee1a92),
                ),
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffDFE9F5),
                    Colors.white,
                  ],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            "str. 10 khan village multan",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    top: 10,
                    bottom: 5,
                  ),
                  child: Text("Phone"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xffee1a92),
                ),
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffDFE9F5),
                    Colors.white,
                  ],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            "+92-334-3333333",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    top: 10,
                    bottom: 5,
                  ),
                  child: Text("Email"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xffee1a92),
                ),
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffDFE9F5),
                    Colors.white,
                  ],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            "shahidsaeed7777@gmail.com",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(),
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

class CustomerProfileAbout extends StatelessWidget {
  const CustomerProfileAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    top: 20,
                    bottom: 5,
                  ),
                  child: Text("About"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 5),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xffee1a92),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    height: 125,
                    child: Text('About'),
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
