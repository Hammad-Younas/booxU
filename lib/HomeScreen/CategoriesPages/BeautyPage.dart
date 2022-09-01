import 'package:flutter/material.dart';

import '../../Constants/CustomWidgets.dart';

class BeautyPage extends StatelessWidget {
  const BeautyPage({Key? key}) : super(key: key);

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
                  "assets/images/beauty/barbershop.jpg",
                  "Barbershop",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/beauty/mackup.jpg",
                  "Make-up",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/beauty/tatto.jpg",
                  "Tattoo & Piercing",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/beauty/facial and spa.jpg",
                  "Facial & SPA",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/beauty/pedicure and manicure.jpg",
                  "Pedicure & Manicure",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/beauty/other.jpg",
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
