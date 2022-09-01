import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';

import '../Constants/CustomColor.dart';

class SearchCompany extends StatelessWidget {
  const SearchCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
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
            PageName: 'Search Company',
          ),
        ),
        body: Column(
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
                      backgroundImage:
                          AssetImage("assets/images/services/renovation.jpg"),
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
                      backgroundImage:
                          AssetImage("assets/images/services/renovation.jpg"),
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
                      backgroundImage:
                          AssetImage("assets/images/services/renovation.jpg"),
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
                      backgroundImage:
                          AssetImage("assets/images/services/renovation.jpg"),
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
    );
  }
}
