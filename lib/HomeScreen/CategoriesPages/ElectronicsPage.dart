import 'package:flutter/material.dart';

import '../../Constants/CustomWidgets.dart';

class ElectronicsPage extends StatelessWidget {
  const ElectronicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
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
            PageName: "Favorites",
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/electronics/mobile phones.jpg",
                  "Mobile Phones",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/electronics/computers.jpg",
                  "Computers",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/electronics/cameras.jpg",
                  "Cameras",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/electronics/games and console.jpg",
                  "Games & Consoles",
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HomeWidget.CustomWidget(
                    "assets/images/electronics/others.jpg",
                    "Others",
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
