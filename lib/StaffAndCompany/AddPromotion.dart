import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';

class AddPromotion extends StatelessWidget {
  const AddPromotion({Key? key}) : super(key: key);

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
          PageName: "Add Promotion",
        ),
      ),
    ));
  }
}
