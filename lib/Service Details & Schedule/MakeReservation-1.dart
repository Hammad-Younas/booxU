import 'package:booxu/Constants/CustomColor.dart';
import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:booxu/Service%20Details%20&%20Schedule/MakeReservation-2.dart';
import 'package:flutter/material.dart';

class MakeReservation1 extends StatefulWidget {
  const MakeReservation1({Key? key}) : super(key: key);

  @override
  State<MakeReservation1> createState() => _MakeReservation1State();
}

class _MakeReservation1State extends State<MakeReservation1> {
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
            PageName: "Make a Reservation",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  "Reservation Works",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.Secondary,
                  ),
                ),
              ),
              CalenderReservation.CustomCalender(),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 5),
                      blurRadius: 10,
                      color: Colors.black12,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 40,
                      right: 40,
                    ),
                    child: Text(
                      "Please select an available staff to view available hours for booking",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MakeReservation2(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15, left: 30, right: 30),
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
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 30, right: 30),
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
                margin: EdgeInsets.only(top: 15, left: 30, right: 30),
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
                margin: EdgeInsets.only(top: 15, left: 30, right: 30),
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
                margin: EdgeInsets.only(top: 15, left: 30, right: 30),
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
                margin: EdgeInsets.only(top: 15, left: 30, right: 30),
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
            ],
          ),
        ),
      ),
    );
  }
}
