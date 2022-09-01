import 'package:flutter/material.dart';

import '../../Constants/CustomWidgets.dart';

class HomeAndPersonal extends StatelessWidget {
  const HomeAndPersonal({Key? key}) : super(key: key);

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
                  "assets/images/home & personal/home appliances.jpg",
                  "Home Appliances",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/home & personal/furniture and decoration.jpg",
                  "Furniture & Decoration",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeWidget.CustomWidget(
                  "assets/images/home & personal/garden.jpg",
                  "Garden",
                ),
                HomeWidget.CustomWidget(
                  "assets/images/home & personal/other.jpg",
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
