import 'package:flutter/material.dart';

import '../../Constants/CustomWidgets.dart';

class ProfessionalBusiness extends StatelessWidget {
  const ProfessionalBusiness({Key? key}) : super(key: key);

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
                  "assets/images/professional & business/private and cooperative office.jpg",
                  "Corporate Offices",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/professional & business/government offices.jpg",
                  "Government Offices",
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HomeWidget.CustomWidget(
                    "assets/images/professional & business/others.jpg",
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
