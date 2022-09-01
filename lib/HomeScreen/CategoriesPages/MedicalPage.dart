import 'package:flutter/material.dart';

import '../../Constants/CustomWidgets.dart';

class MedicalPage extends StatelessWidget {
  const MedicalPage({Key? key}) : super(key: key);

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
                  "assets/images/medical/clinic.jpg",
                  "Clinics",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/medical/pharmacy.jpg",
                  "Pharmacies",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/medical/dentals.jpg",
                  "Dentals",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/medical/other.jpg",
                  "Others",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
