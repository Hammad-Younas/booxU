import 'package:booxu/Constants/CustomColor.dart';
import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:booxu/StaffAndCompany/SearchCompany.dart';
import 'package:flutter/material.dart';

import 'NewCompany.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({Key? key}) : super(key: key);

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
            PageName: 'Company',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Text(
                "You don't belong to a company yet. You can search for an existing one in the search menu, or add a new one",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchCompany(),
                  ),
                );
              },
              child: Text(
                "Search",
                style: TextStyle(
                  color: CustomColors.Primary,
                  fontSize: 18,
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
                top: 30,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFF00B7),
                  minimumSize: const Size.fromHeight(50),
                  // NEW
                ),
                child: const Text(
                  'New Company',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewCompany(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
