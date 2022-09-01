import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';

import '../Constants/CustomColor.dart';

class AddStaff extends StatelessWidget {
  const AddStaff({Key? key}) : super(key: key);

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
            PageName: "Add Staff",
          ),
        ),
        body: Column(
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
                    hintText: "Search by Email",
                    hintStyle: TextStyle(fontSize: 18),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
