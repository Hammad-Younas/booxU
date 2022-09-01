import 'package:booxu/Bookings/BookingHistory.dart';
import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Constants/CustomColor.dart';

class BookingApproval extends StatefulWidget {
  const BookingApproval({Key? key}) : super(key: key);

  @override
  State<BookingApproval> createState() => _BookingApprovalState();
}

class _BookingApprovalState extends State<BookingApproval> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  String dropdownvalue = "PENDING";

  var items = [
    "PENDING",
    "APPROVED",
    "DECLINED",
  ];
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
            trailing: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingHistory(),
                  ),
                );
              },
              child: Icon(
                Icons.history,
                color: Colors.white,
              ),
            ),
          ),
        ),
        drawer: MyDrawer(),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, left: 30, right: 30),
              height: 130,
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
                      backgroundImage:
                          AssetImage("assets/images/beauty/beauty.jpg"),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.52,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "SHAHID SAEED",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              width: 75,
                              height: 19,
                              decoration: BoxDecoration(
                                color: CustomColors.Primary,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    dropdownColor: Colors.black,
                                    isDense: true,
                                    value: dropdownvalue,
                                    isExpanded: true,
                                    iconSize: 20,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                    ),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Renovation Work",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff565455),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.52,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Services",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: CustomColors.Secondary,
                                ),
                              ),
                            ),
                            Container(
                              height: 19,
                              width: 75,
                              decoration: BoxDecoration(
                                color: CustomColors.Primary,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  "MESSAGE",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8, bottom: 5),
                        width: MediaQuery.of(context).size.width * 0.42,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Date",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    "01/07/2021",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Time",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    "17:30 - 17:50",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.52,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
