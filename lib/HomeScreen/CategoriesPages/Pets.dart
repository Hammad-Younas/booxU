import 'package:flutter/material.dart';

import '../../Constants/CustomWidgets.dart';

class Pets extends StatelessWidget {
  const Pets({Key? key}) : super(key: key);

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
                  "assets/images/pets/pets clinic.jpg",
                  "Pets Clinic",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/pets/petshop.jpg",
                  "Pets Shop",
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HomeWidget.CustomWidget(
                    "assets/images/pets/others.jpg",
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
