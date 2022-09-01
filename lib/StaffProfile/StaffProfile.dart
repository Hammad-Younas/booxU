import 'package:booxu/Messages/Message-1.dart';
import 'package:booxu/StaffProfile/StaffProfileAbout.dart';
import 'package:booxu/StaffProfile/StaffProfileDetails.dart';
import 'package:booxu/StaffProfile/StaffProfilePromotions.dart';
import 'package:booxu/StaffProfile/StaffProfileReviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/CustomColor.dart';
import '../Constants/CustomWidgets.dart';

class StaffProfile extends StatefulWidget {
  const StaffProfile({Key? key}) : super(key: key);

  @override
  State<StaffProfile> createState() => _StaffProfileState();
}

class _StaffProfileState extends State<StaffProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
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
              PageName: "Staff Profile",
              trailing: SizedBox(
                height: 20,
                width: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Message1(),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/message.svg',
                    color: Colors.white,
                  ),
                ),
              ),
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
                    // margin: EdgeInsets.only(
                    //   left: 10,
                    //   right: 10,
                    // ),
                    child: TabBar(
                      indicatorColor: CustomColors.Primary,
                      onTap: (index) {},
                      isScrollable: true,
                      tabs: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StaffProfile(),
                              ),
                            );
                          },
                          child: Tab(
                            child: Text(
                              "Staff",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
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
                            "Promotions",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Reviews",
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
                            offset: Offset(1, 1),
                            color: Colors.black,
                            blurRadius: 4,
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
                              left: 15,
                              right: 15,
                            ),
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/services/renovation.jpg"),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shahid Company",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.Secondary,
                                ),
                              ),
                              Text(
                                "Shahid Renovation Work",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff565455),
                                ),
                              ),
                              Text(
                                "Shahid Company",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff565455),
                                ),
                              ),
                            ],
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
                            offset: Offset(1, 1),
                            color: Colors.black,
                            blurRadius: 4,
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
                              left: 15,
                              right: 15,
                            ),
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/services/renovation.jpg"),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shahid Company",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.Secondary,
                                ),
                              ),
                              Text(
                                "Shahid Renovation Work",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff565455),
                                ),
                              ),
                              Text(
                                "Shahid Company",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff565455),
                                ),
                              ),
                            ],
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
                            offset: Offset(1, 1),
                            color: Colors.black,
                            blurRadius: 4,
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
                              left: 15,
                              right: 15,
                            ),
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/services/renovation.jpg"),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shahid Company",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.Secondary,
                                ),
                              ),
                              Text(
                                "Shahid Renovation Work",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff565455),
                                ),
                              ),
                              Text(
                                "Shahid Company",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff565455),
                                ),
                              ),
                            ],
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
                            offset: Offset(1, 1),
                            color: Colors.black,
                            blurRadius: 4,
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
                              left: 15,
                              right: 15,
                            ),
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/services/renovation.jpg"),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shahid Company",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.Secondary,
                                ),
                              ),
                              Text(
                                "Shahid Renovation Work",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff565455),
                                ),
                              ),
                              Text(
                                "Shahid Company",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff565455),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15,
                        left: 30,
                        right: 30,
                        bottom: 15,
                      ),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.black,
                            blurRadius: 4,
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
                              left: 15,
                              right: 15,
                            ),
                            height: 40,
                            width: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/services/renovation.jpg"),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shahid Company",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.Secondary,
                                ),
                              ),
                              Text(
                                "Shahid Renovation Work",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff565455),
                                ),
                              ),
                              Text(
                                "Shahid Company",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff565455),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              StaffProfileDetails(),
              StaffProfileAbout(),
              StaffProfilePromotions(),
              StaffProfileReviews(),
            ],
          ),
        ),
      ),
    );
  }
}
