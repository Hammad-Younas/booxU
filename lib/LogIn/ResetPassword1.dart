import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ResetPassword1 extends StatefulWidget {
  const ResetPassword1({Key? key}) : super(key: key);

  @override
  State<ResetPassword1> createState() => _ResetPassword1State();
}

class _ResetPassword1State extends State<ResetPassword1> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
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
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                  hintText: "New Password",
                  hintStyle: TextStyle(
                    color: Color(0xff878686),
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                  MinLengthValidator(7,
                      errorText:
                          "Password must contains more than 7 characters")
                ]),
                obscureText: _obsecure,
                controller: _controller,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 30,
                top: 30,
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
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(
                    color: Color(0xff878686),
                  ),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required"),
                  MinLengthValidator(7,
                      errorText:
                          "Password must contains more than 7 characters")
                ]),
                obscureText: _obsecure,
                controller: _controller2,
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
                  'Confirm',
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
    );
  }
}
