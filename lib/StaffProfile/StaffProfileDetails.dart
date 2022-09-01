import 'package:flutter/material.dart';

class StaffProfileDetails extends StatelessWidget {
  const StaffProfileDetails({Key? key}) : super(key: key);

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
                  child: Text("Opening Times"),
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
                            "10:00 - 17:00",
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
