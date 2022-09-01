import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class img extends StatefulWidget {
  const img({Key? key}) : super(key: key);

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  bool _obsecure = true;
  bool? checkedvalue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 25,
              top: 20,
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
            child: TextFormField(
              controller: _controller,
              cursorColor: Color(0xffee1a92),
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20),
                border: InputBorder.none,
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Color(0xff878686),
                ),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: MultiValidator([
                RequiredValidator(errorText: "Required"),
                MinLengthValidator(7,
                    errorText: "Password must contains more than 7 characters")
              ]),
              obscureText: _obsecure,
            ),
          ),
          CustomXO("test")
        ],
      )),
    );
  }
}

Widget CustomXO(
  String txt,
) {
  GlobalKey<FormState> fkey = GlobalKey<FormState>();
  TextEditingController _econtroller = TextEditingController();
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 22, left: 36, right: 36),
        child: SizedBox(
          width: 350,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: _econtroller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: EmailValidator(errorText: "Enter valid Email"),
            autofocus: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 248, 192, 71))),
              fillColor: Color.fromARGB(255, 236, 233, 233).withOpacity(0.6),
              filled: true,
              suffixIcon: Icon(
                CupertinoIcons.mail,
                color: Color.fromARGB(255, 122, 122, 122),
              ),
              hintText: txt,
              hintStyle: TextStyle(
                  fontSize: 15.0, color: Color.fromARGB(255, 156, 154, 154)),
              contentPadding: EdgeInsets.only(left: 5),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    ],
  );
}
