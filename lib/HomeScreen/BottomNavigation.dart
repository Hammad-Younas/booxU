import 'package:booxu/Bookings/MapView.dart';
import 'package:booxu/Messages/Messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Bookings/Booking.dart';
import '../Constants/CustomColor.dart';
import 'BooxuHome.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
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
          BooxuHome(),
          Bookings(),
          MapView1(),
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
          selectedItemColor: CustomColors.Primary,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                // height: 24,
                // width: 24,
                child: SvgPicture.asset(
                  "assets/home.svg",
                  height: 24,
                  width: 24,
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
              label: 'BOOKING',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  "assets/map.svg",
                  color:
                      _selectedIndex == 2 ? CustomColors.Primary : Colors.black,
                ),
              ),
              label: 'MAP',
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
        ),
      ),
    );
  }
}
