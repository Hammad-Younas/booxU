import 'package:booxu/Constants/CustomColor.dart';
import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:booxu/FavouritesScreens/Favourite.dart';
import 'package:booxu/HomeScreen/CategoriesPages/AutomotivePage.dart';
import 'package:booxu/HomeScreen/CategoriesPages/EducationPage.dart';
import 'package:booxu/HomeScreen/CategoriesPages/Home&Personal.dart';
import 'package:booxu/HomeScreen/CategoriesPages/Pets.dart';
import 'package:booxu/HomeScreen/CategoriesPages/ProfessionalBusiness.dart';
import 'package:booxu/HomeScreen/CategoriesPages/Services.dart';
import 'package:booxu/SettingsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../ProfileScreens/ProfilePage.dart';
import 'CategoriesPages/ElectronicsPage.dart';
import 'CategoriesPages/MedicalPage.dart';
import 'CategoriesPages/WellnessPage.dart';

class BooxuHome extends StatefulWidget {
  const BooxuHome({Key? key}) : super(key: key);

  @override
  State<BooxuHome> createState() => _BooxuHomeState();
}

class _BooxuHomeState extends State<BooxuHome> {
  PageController pageController = PageController();

  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: FixAppBar(
            leddingicon: GestureDetector(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: SvgPicture.asset("assets/menu.svg"),
            ),
            PageName: "BooxU",
            trailing: SizedBox(
              height: 21,
              width: 21,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Favourites(),
                    ),
                  );
                },
                child: SvgPicture.asset(
                  "assets/heart.svg",
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        drawer: Container(
          margin: EdgeInsets.only(bottom: 20),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.9,
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
                        subtitle: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfilePage(),
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
                        _key.currentState!.openEndDrawer();
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
                leading: Icon(
                  MdiIcons.heart,
                  size: 33,
                  color: Colors.black,
                ),
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
                    "Favourite",
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
                child: Center(
                  child: Text(
                    "Version 1.0.0",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: CustomColors.Secondary2,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.search_rounded,
                    size: 30,
                  ),
                  title: TextField(
                    cursorColor: CustomColors.Secondary2,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 18),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFF00B7),
                      Color(0xffEE1A92),
                    ],
                  ),
                ),
                height: 160,
                child: Center(
                  child: Text(
                    "ADDS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 30,
                      top: 15,
                    ),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.Secondary2,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServicesPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/services/services.jpg",
                      "Services",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WellnessPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/beauty/beauty.jpg",
                      "Beauty",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WellnessPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/wellness/wellness.jpg",
                      "Wellness",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EducationPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/education/education.jpg",
                      "Education",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MedicalPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/medical/medical.jpg",
                      "Medical",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AutomotivePage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/automotive/automative.jpg",
                      "Automotive",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ElectronicsPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/electronics/electronics.jpg",
                      "Electronics",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Pets(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/pets/pets.jpg",
                      "Pets",
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeAndPersonal(),
                          ),
                        );
                      },
                      child: HomeWidget.CustomWidget(
                        "assets/images/home & personal/home and personal.jpg",
                        "Home & Personal",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfessionalBusiness(),
                          ),
                        );
                      },
                      child: HomeWidget.CustomWidget(
                        "assets/images/professional & business/Professional and Business.jpg",
                        "Professional",
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
