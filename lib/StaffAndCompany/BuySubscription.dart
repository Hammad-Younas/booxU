import 'package:booxu/Constants/CustomColor.dart';
import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:booxu/StaffAndCompany/BottomNavigationCompany.dart';
import 'package:flutter/material.dart';

class BuySubscription extends StatelessWidget {
  const BuySubscription({Key? key}) : super(key: key);

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
            PageName: "Buy Subscriptions",
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigationCompany(),
                        ),
                      );
                    },
                    child: Text(
                      "Free",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.Primary,
                      ),
                    ),
                  ),
                  Text(
                      "Maximum of 5 staff\nYou get 5 credits bonus\nDuration: 24 Months\nFree")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Medium Company",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.Primary,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 20,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffff00b7),
                                    Color(0xffee1a92),
                                  ],
                                )),
                            child: Center(
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("Maximum of 10 - 15 staff\n"
                      "You get 10 credits bonus\n"
                      "Duration: 1 Month RM 3.99\n"
                      "Duration: 24 Months RM 33.50")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Maximum Company",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.Primary,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 20,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffff00b7),
                                    Color(0xffee1a92),
                                  ],
                                )),
                            child: Center(
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("MMaximum 15 - 30 staff\n"
                      "You get 12 credits bonus\n"
                      "Duration: 1 Month RM 9.99\n"
                      "Duration: 24 Months RM 83.93")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
