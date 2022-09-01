import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:booxu/Constants/CustomColor.dart';
import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int value = 0;
  bool positive = false;
  bool negative = false;
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
            PageName: "Settings",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Enable Email',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.Primary,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 40,
                      child: AnimatedToggleSwitch<bool>.dual(
                        current: positive,
                        first: true,
                        second: false,
                        borderColor: CustomColors.Primary,
                        borderWidth: 1.5,
                        onChanged: (b) => setState(() => positive = b),
                        colorBuilder: (b) =>
                            b ? CustomColors.Primary : CustomColors.Primary,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Enable Notifications',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.Primary,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 40,
                      child: AnimatedToggleSwitch<bool>.dual(
                        current: negative,
                        first: false,
                        second: true,
                        borderColor: CustomColors.Primary,
                        borderWidth: 1.5,
                        onChanged: (b) => setState(() => negative = b),
                        colorBuilder: (b) =>
                            b ? CustomColors.Primary : CustomColors.Primary,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Language",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.Primary,
                      ),
                    ),
                    Text(
                      "English",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.Primary,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
