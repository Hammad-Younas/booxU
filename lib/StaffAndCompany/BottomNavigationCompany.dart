import 'package:booxu/Messages/Messages.dart';
import 'package:booxu/StaffAndCompany/CompanyServices/Services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Bookings/BookingApproval/BookingApproval.dart';
import '../Constants/CustomColor.dart';
import 'BooxuCompanyHome.dart';

class BottomNavigationCompany extends StatefulWidget {
  const BottomNavigationCompany({Key? key}) : super(key: key);

  @override
  State<BottomNavigationCompany> createState() =>
      _BottomNavigationCompanyState();
}

class _BottomNavigationCompanyState extends State<BottomNavigationCompany> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          BooxuCompany(),
          BookingApproval(),
          Services(),
          Messages(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: CustomColors.Primary,
          border: Border.all(
            color: CustomColors.Primary,
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          showUnselectedLabels: true,
          backgroundColor: Colors.transparent,
          unselectedItemColor: Colors.black,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  "assets/home.svg",
                  color:
                      _selectedIndex == 0 ? CustomColors.Primary : Colors.black,
                ),
              ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  "assets/booking.svg",
                  color:
                      _selectedIndex == 1 ? CustomColors.Primary : Colors.black,
                ),
              ),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  "assets/briefcase.svg",
                  color:
                      _selectedIndex == 2 ? CustomColors.Primary : Colors.black,
                ),
              ),
              label: 'SERVICES',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  "assets/message.svg",
                  color:
                      _selectedIndex == 3 ? CustomColors.Primary : Colors.black,
                ),
              ),
              label: 'MESSAGE',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: onTapped,
          selectedItemColor: CustomColors.Primary,
        ),
      ),
    );
  }
}
