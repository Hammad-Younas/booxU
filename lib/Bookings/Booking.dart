import 'package:booxu/Bookings/Booking1.dart';
import 'package:booxu/Bookings/BookingHistory.dart';
import 'package:booxu/Bookings/BookingToday.dart';
import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';

import '../Constants/CustomColor.dart';

class Bookings extends StatelessWidget {
  const Bookings({Key? key}) : super(key: key);

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
            PageName: "Bookings",
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
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                    labelColor: Colors.black,
                    indicatorColor: CustomColors.Primary,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 3,
                    tabs: [
                      Tab(text: "Today"),
                      Tab(text: "Next Day"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    BookingToday(),
                    BookingNextday(),
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
