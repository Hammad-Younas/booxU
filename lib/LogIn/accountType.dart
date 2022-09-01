import 'package:booxu/StaffAndCompany/Company.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/CustomColor.dart';
import '../HomeScreen/BottomNavigation.dart';

class accountType extends StatelessWidget {
  const accountType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 40,
              color: CustomColors.Primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Account Type",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 45),
              child: Text(
                "Select Account Type",
                style: GoogleFonts.roboto(
                  fontSize: 23,
                  color: CustomColors.Secondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 60, right: 60, bottom: 20),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Create an account to make "
                  "appointments for different services.",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 30,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFF00B7),
                  minimumSize: const Size.fromHeight(50),
                  // NEW
                ),
                child: const Text(
                  'CUSTOMER',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigation(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 60,
                right: 60,
                top: 10,
                bottom: 20,
              ),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Create an account as services provider, so you can add services that others can book.",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 30,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFF00B7),
                  minimumSize: const Size.fromHeight(50),
                  // NEW
                ),
                child: const Text(
                  'STAFF AND COMPANY',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CompanyPage(),
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
