import 'package:flutter/material.dart';

import '../../Constants/CustomWidgets.dart';
import 'ManageServicesEdit.dart';

class ManageServices extends StatelessWidget {
  const ManageServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: FixAppBar(
            leddingicon: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                )),
            PageName: "Services",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ManageServicesEdit(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/services/renovation.jpg",
                      "Renovation Works",
                    ),
                  ),
                  HomeWidget.CustomWidget(
                    "assets/images/services/plumbing.jpg",
                    "Plumbing",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeWidget.CustomWidget(
                    "assets/images/services/electrical.jpg",
                    "Electrical",
                  ),
                  HomeWidget.CustomWidget(
                    "assets/images/services/air-conditioning.jpg",
                    "Air-Conditioning",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeWidget.CustomWidget(
                    "assets/images/services/repair and service.jpg",
                    "Repair & Service",
                  ),
                  HomeWidget.CustomWidget(
                    "assets/images/services/grass cutting.jpg",
                    "Grass cutting",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeWidget.CustomWidget(
                    "assets/images/services/cleaning.jpg",
                    "Cleaning",
                  ),
                  HomeWidget.CustomWidget(
                    "assets/images/services/other.jpg",
                    "Others",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
