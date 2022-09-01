import 'package:booxu/Constants/CustomColor.dart';
import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';

import '../LogIn/ResetPassword1.dart';

class EditCompanyProfile extends StatelessWidget {
  const EditCompanyProfile({Key? key}) : super(key: key);

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
                    margin: EdgeInsets.only(left: 25, top: 20, bottom: 10),
                    child: Text(
                      "Edit Profile Info",
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
                  bottom: 20,
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
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Color(0xff878686),
                    ),
                  ),
                ),
              ),
              Container(
                height: 150,
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 20,
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
                    hintText: "About",
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
                  bottom: 20,
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
                    hintText: "Address",
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
                  bottom: 20,
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
                    hintText: "Email Address",
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
                  bottom: 30,
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
                child: TextField(
                  cursorColor: Color(0xffee1a92),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    border: InputBorder.none,
                    hintText: "Phone",
                    hintStyle: TextStyle(
                      color: Color(0xff878686),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPassword1(),
                    ),
                  );
                },
                child: Text(
                  "Change Password?",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.Primary,
                  ),
                ),
              ),
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
                  bottom: 30,
                  top: 50,
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
