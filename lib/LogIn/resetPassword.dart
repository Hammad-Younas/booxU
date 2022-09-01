import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:booxu/LogIn/ResetPassword1.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _emailcontroller = TextEditingController();
  bool _obsecure = true;
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
            PageName: "Reset Password",
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 30,
                top: 100,
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
                keyboardType: TextInputType.emailAddress,
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
                  'SEND',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResetPassword1()),
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
