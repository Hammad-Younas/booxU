import 'package:flutter/material.dart';

import '../../Constants/CustomWidgets.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key}) : super(key: key);

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
                  "assets/images/education/tuition.jpg",
                  "Tuition",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/education/school and college.jpg",
                  "School & College",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/education/driving school.jpg",
                  "Driving School",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/education/music.jpg",
                  "Music",
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HomeWidget.CustomWidget(
                    "assets/images/education/other.jpg",
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
