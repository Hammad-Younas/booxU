import 'package:booxu/StaffAndCompany/PromoCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

import '../FavouritesScreens/Favourite.dart';
import '../ProfileScreens/CompanyProfilePage.dart';
import '../SettingsScreen.dart';
import 'CustomColor.dart';

class HomeWidget {
  static Widget CustomWidget(String image, String ImageText) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 5),
            blurRadius: 10,
            color: Colors.black12,
          ),
        ],
      ),
      height: 110,
      width: 150,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            // width: double.infinity,
            height: 30,
            child: Center(
              child: Text(ImageText),
            ),
          ),
        ],
      ),
    );
  }
}

class FixAppBar extends StatefulWidget {
  Widget trailing, leddingicon, profile;
  String PageName, mysvg;

  FixAppBar({
    Key? key,
    required this.PageName,
    this.trailing = const Text(''),
    this.mysvg = '',
    this.leddingicon = const Text(''),
    this.profile = const Text(''),
  }) : super(key: key);

  @override
  State<FixAppBar> createState() => _FixAppBarState();
}

class _FixAppBarState extends State<FixAppBar> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: 50,
          color: CustomColors.Secondary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: widget.leddingicon,
              ),
              Text(
                widget.PageName,
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: widget.trailing,
              ),
            ],
          ),
        ),
        widget.profile, //This is for Staff Profile page
      ],
    );
  }
}

class RenovationWork {
  static Widget RenovationCustom(
    String CircleImage,
    String heading,
    String subheading,
  ) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 30, right: 30),
      height: 95,
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
              left: 15,
              right: 15,
            ),
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage(CircleImage),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              Text(
                subheading,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff565455),
                ),
              ),
              Text(
                "Services",
                style: TextStyle(
                  fontSize: 15,
                  color: CustomColors.Secondary,
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Charges",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "\$1000.0/20 Minutes",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "No Location Provided",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CalenderReservation {
  static Widget CustomCalender() {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 5),
              blurRadius: 10,
              color: Colors.black12,
            ),
          ],
          border: Border.all(
            color: Colors.pink,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(1990),
        lastDay: DateTime(2050),
        rowHeight: 35,
        calendarStyle: CalendarStyle(
          selectedDecoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}

class AvailableTimings {
  static Widget timing(String Time) {
    return Container(
      height: 25,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: CustomColors.Secondary,
        ),
      ),
      child: Center(
        child: Text(Time),
      ),
    );
  }
}

class MyDrawer extends StatefulWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        border: Border.all(color: CustomColors.Primary),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(2, 5),
            blurRadius: 10,
          ),
        ],
      ),
      margin: EdgeInsets.only(bottom: 20),
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.66,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Center(
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset.zero,
                            blurRadius: 8.0,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: Icon(Icons.person_outline_rounded),
                    ),
                    title: Text(
                      "Shahid Saeed",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CompanyProfilePage(),
                          ),
                        );
                      },
                      child: Text(
                        "View Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFF00B7),
                      Color(0xffEE1A92),
                    ],
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 30,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.5, 1.5),
                        blurRadius: 5),
                  ],
                ),
                // child: Icon(Icons.close, size: 20,)
                child: InkWell(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Icon(
                    Icons.close,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(
              MdiIcons.accountCircleOutline,
              size: 33,
              color: Colors.black,
            ),
            title: Text(
              "About Us",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/group.svg"),
            title: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Favourites(),
                  ),
                );
              },
              child: Text(
                "Company",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          ListTile(
            leading: SizedBox(
                width: 25,
                height: 25,
                child: SvgPicture.asset("assets/coupon.svg")),
            title: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PromoCode(),
                  ),
                );
              },
              child: Text(
                "Promo Code",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              size: 33,
              color: Colors.black,
            ),
            title: Text(
              "Search",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              MdiIcons.star,
              size: 33,
              color: Colors.black,
            ),
            title: Text(
              "Rate Us",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: SizedBox(
              height: 23,
              width: 23,
              child: Image.asset("assets/share.png"),
            ),
            title: Text(
              "Share App",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: SizedBox(
              width: 26,
              height: 20,
              child: Image.asset("assets/email.png"),
            ),
            title: Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: SizedBox(
              height: 22,
              width: 20,
              child: Image.asset("assets/privacy.png"),
            ),
            title: Text(
              "Privacy Policy",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: SizedBox(
              height: 22,
              width: 21,
              child: Image.asset("assets/settings.png"),
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          ListTile(
            leading: SizedBox(
              height: 22,
              width: 21,
              child: Image.asset("assets/logout.png"),
            ),
            title: Text(
              "Logout",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Center(
              child: Text(
                "Version 1.0.0",
                style: TextStyle(fontSize: 10, color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
