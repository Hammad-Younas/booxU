import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:booxu/Service%20Details%20&%20Schedule/MakeReservation.dart';
import 'package:flutter/material.dart';

import '../Constants/CustomColor.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({Key? key}) : super(key: key);

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
                )),
            PageName: "Service Details",
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30),
              height: 60,
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
                        "Renovation Work",
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
              height: 150,
              width: 150,
              child: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/services/renovation.jpg"),
              ),
            ),
            Container(
              height: 130,
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name:",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                bottom: 4,
                                top: 4,
                              ),
                              child: Text(
                                "Duration:",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 4),
                              child: Text(
                                "Price:",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Text(
                              "Details:",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 3),
                              child: Text(
                                "Renovation Works",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 3),
                              child: Text(
                                "20 minutes",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 3),
                              child: Text(
                                "\$1000.0",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Text(
                              "Renovate your homes and offices",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
                top: 30,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFF00B7),
                  minimumSize: const Size.fromHeight(50),
                  // NEW
                ),
                child: const Text(
                  'VIEW SCHEDULE',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MakeReservation(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
