import 'package:booxu/Constants/CustomColor.dart';
import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:booxu/Service%20Details%20&%20Schedule/MakeReservation-3.dart';
import 'package:flutter/material.dart';

class MakeReservation2 extends StatefulWidget {
  const MakeReservation2({Key? key}) : super(key: key);

  @override
  State<MakeReservation2> createState() => _MakeReservation2State();
}

class _MakeReservation2State extends State<MakeReservation2> {
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
            )),
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
                      "Please select a day to view the available staff for booking",
                      textAlign: TextAlign.center,
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
                      offset: Offset(2, 5),
                      blurRadius: 10,
                      color: Colors.black12,
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
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 15, bottom: 10),
                    child: Text(
                      "Select Hours Between : 10:00 - 17:00",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MakeReservation3(),
                          ),
                        );
                      },
                      child: AvailableTimings.timing("10:00"),
                    ),
                    AvailableTimings.timing("11:00"),
                    AvailableTimings.timing("12:00"),
                    AvailableTimings.timing("13:00"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AvailableTimings.timing("14:00"),
                    AvailableTimings.timing("15:00"),
                    AvailableTimings.timing("16:00"),
                    AvailableTimings.timing("17:00"),
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
