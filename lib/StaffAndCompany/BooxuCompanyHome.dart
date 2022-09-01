import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'AddPromotion.dart';

class BooxuCompany extends StatefulWidget {
  const BooxuCompany({Key? key}) : super(key: key);

  @override
  State<BooxuCompany> createState() => _BooxuCompanyState();
}

class _BooxuCompanyState extends State<BooxuCompany> {
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
            leddingicon: InkWell(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: SvgPicture.asset("assets/menu.svg"),
            ),
            PageName: "BooxU",
            trailing: SizedBox(
              height: 21,
              width: 21,
            ),
          ),
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddPromotion(),
                    ),
                  );
                },
                child: Container(
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
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Create ADD \nor Promote Here",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
