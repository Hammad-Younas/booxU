import 'package:booxu/Constants/CustomColor.dart';
import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';

class ManageServicesEdit extends StatelessWidget {
  const ManageServicesEdit({Key? key}) : super(key: key);

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
            PageName: "Edit Profile",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                    child: Text(
                      "Edit Service Info",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.Primary),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xffee1a92),
                  ),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffDFE9F5),
                      Colors.white,
                    ],
                  ),
                ),
                child: TextFormField(
                  cursorColor: Color(0xffee1a92),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    border: InputBorder.none,
                    hintText: "Renovation Work",
                    hintStyle: TextStyle(
                      color: Color(0xff878686),
                    ),
                  ),
                ),
              ),
              Container(
                height: 95,
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xffee1a92),
                  ),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffDFE9F5),
                      Colors.white,
                    ],
                  ),
                ),
                child: TextFormField(
                  cursorColor: Color(0xffee1a92),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    border: InputBorder.none,
                    hintText: "Service Details",
                    hintStyle: TextStyle(
                      color: Color(0xff878686),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xffee1a92),
                  ),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffDFE9F5),
                      Colors.white,
                    ],
                  ),
                ),
                child: TextFormField(
                  cursorColor: Color(0xffee1a92),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    border: InputBorder.none,
                    hintText: "Charges per hour",
                    hintStyle: TextStyle(
                      color: Color(0xff878686),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xffee1a92),
                  ),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffDFE9F5),
                      Colors.white,
                    ],
                  ),
                ),
                child: TextFormField(
                  cursorColor: Color(0xffee1a92),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    border: InputBorder.none,
                    hintText: "Opening  Hours 10:00 - 17:00",
                    hintStyle: TextStyle(
                      color: Color(0xff878686),
                    ),
                  ),
                ),
              ),
              Text(
                "Available Dates",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.Primary,
                ),
              ),
              CalenderReservation.CustomCalender(),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      offset: Offset(4, 4),
                      blurRadius: 3,
                    ),
                    BoxShadow(
                      offset: Offset(-6, -6),
                      blurRadius: 3,
                      color: Colors.white,
                    ),
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 3,
                      color: Color(0xff728eab),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffD6E3F3),
                      Color(0xffFF00B7),
                      Color(0xffEE1A92),
                    ],
                  ),
                ),
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 20,
                  bottom: 20,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFF00B7),
                    minimumSize: const Size.fromHeight(50),
                    // NEW
                  ),
                  child: const Text(
                    'Save Changes',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
