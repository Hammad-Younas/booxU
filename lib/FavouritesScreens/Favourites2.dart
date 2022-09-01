import 'package:flutter/material.dart';

import '../Constants/CustomColor.dart';

class Favourites2 extends StatelessWidget {
  const Favourites2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, left: 30, right: 30),
              height: 60,
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
                        "Shahid",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.Secondary,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Shahid Renovation Work",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff565455),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(left: 30),
                              height: 20,
                              width: 70,
                              decoration: BoxDecoration(
                                color: CustomColors.Primary,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  "BOOK",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ],
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
