import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:booxu/Service%20Details%20&%20Schedule/ServiceDetails.dart';
import 'package:flutter/material.dart';

class Renovation extends StatelessWidget {
  const Renovation({Key? key}) : super(key: key);

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
            PageName: "Renovation Works",
          ),
        ),
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceDetails(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 15),
                child: RenovationWork.RenovationCustom(
                  "assets/images/services/renovation.jpg",
                  "RENOVATION WORKS",
                  "Renovate you homes and offices",
                ),
              ),
            ),
            RenovationWork.RenovationCustom(
              "assets/images/services/renovation.jpg",
              "RENOVATION WORKS",
              "Renovate you homes and offices",
            ),
            RenovationWork.RenovationCustom(
              "assets/images/services/renovation.jpg",
              "RENOVATION WORKS",
              "Renovate you homes and offices",
            ),
            RenovationWork.RenovationCustom(
              "assets/images/services/renovation.jpg",
              "RENOVATION WORKS",
              "Renovate you homes and offices",
            ),
          ],
        ),
      ),
    );
  }
}
