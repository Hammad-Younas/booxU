import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';

import '../../Constants/CustomColor.dart';
import '../../HomeScreen/CategoriesPages/AutomotivePage.dart';
import '../../HomeScreen/CategoriesPages/EducationPage.dart';
import '../../HomeScreen/CategoriesPages/ElectronicsPage.dart';
import '../../HomeScreen/CategoriesPages/Home&Personal.dart';
import '../../HomeScreen/CategoriesPages/MedicalPage.dart';
import '../../HomeScreen/CategoriesPages/Pets.dart';
import '../../HomeScreen/CategoriesPages/ProfessionalBusiness.dart';
import '../../HomeScreen/CategoriesPages/WellnessPage.dart';
import 'ManageServices.dart';

class ManageServicesAdd extends StatelessWidget {
  const ManageServicesAdd({Key? key}) : super(key: key);

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
              ),
            ),
            PageName: "Manage Services",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: CustomColors.Secondary2,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.search_rounded,
                    size: 30,
                  ),
                  title: TextField(
                    cursorColor: CustomColors.Secondary2,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 18),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 30,
                      top: 15,
                    ),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.Secondary2,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ManageServices(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/services/services.jpg",
                      "Services",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WellnessPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/beauty/beauty.jpg",
                      "Beauty",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WellnessPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/wellness/wellness.jpg",
                      "Wellness",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EducationPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/education/education.jpg",
                      "Education",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MedicalPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/medical/medical.jpg",
                      "Medical",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AutomotivePage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/automotive/automative.jpg",
                      "Automotive",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ElectronicsPage(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/electronics/electronics.jpg",
                      "Electronics",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Pets(),
                        ),
                      );
                    },
                    child: HomeWidget.CustomWidget(
                      "assets/images/pets/pets.jpg",
                      "Pets",
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeAndPersonal(),
                          ),
                        );
                      },
                      child: HomeWidget.CustomWidget(
                        "assets/images/home & personal/home and personal.jpg",
                        "Home & Personal",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfessionalBusiness(),
                          ),
                        );
                      },
                      child: HomeWidget.CustomWidget(
                        "assets/images/professional & business/Professional and Business.jpg",
                        "Professional",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
