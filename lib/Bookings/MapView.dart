import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';

class MapView1 extends StatelessWidget {
  const MapView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: FixAppBar(
            leddingicon: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
            PageName: "Map View",
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: FittedBox(
            child: Image.asset(
              "assets/map.png",
            ),
          ),
        ),
      ),
    );
  }
}
