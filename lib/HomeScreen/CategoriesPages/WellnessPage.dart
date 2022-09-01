import 'package:flutter/material.dart';

import '../../Constants/CustomWidgets.dart';

class WellnessPage extends StatelessWidget {
  const WellnessPage({Key? key}) : super(key: key);

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
                  "assets/images/wellness/Reflexology.jpg",
                  "Reflexology",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/wellness/massage.jpg",
                  "Massage",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/wellness/body treatment.jpg",
                  "Body Treatment",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/wellness/therapy.jpg",
                  "Therapy",
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HomeWidget.CustomWidget(
                    "assets/images/wellness/other.jpg",
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
