import 'package:flutter/material.dart';

import '../../Constants/CustomWidgets.dart';

class AutomotivePage extends StatelessWidget {
  const AutomotivePage({Key? key}) : super(key: key);

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
                  "assets/images/automotive/repair and service.jpg",
                  "Repair and Service",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/automotive/air-conditioning.jpg",
                  "Air-conditioning",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/automotive/body works.jpg",
                  "Bodyworks",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/automotive/battery.jpg",
                  "Battery",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/automotive/tyre.jpg",
                  "Tyres",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/automotive/accessories.jpg",
                  "Accessories",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/automotive/sale and rent.jpg",
                  "Sale and Rent",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/automotive/other.jpg",
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
