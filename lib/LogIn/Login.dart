import 'package:booxu/LogIn/SignUp.dart';
import 'package:booxu/LogIn/resetPassword.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'accountType.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  bool _obsecure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 70,
                              bottom: 20,
                            ),
                            height: 140,
                            width: 167,
                            child: SvgPicture.asset("assets/booxu.svg"),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SvgPicture.asset("assets/edge.svg"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        child: Text(
                          "Welcome!",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 25,
                          bottom: 20,
                        ),
                        child: Text(
                          "Please login to your account",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 25,
                      right: 25,
                      bottom: 25,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color(0xffee1a92),
                      ),
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.center,
                        colors: [
                          Color(0xffDFE9F5),
                          Colors.white,
                        ],
                      ),
                    ),
                    child: TextFormField(
                      controller: _emailcontroller,
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
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: EmailValidator(errorText: "Enter valid Email"),
                      autofocus: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 25,
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
                            errorText:
                                "Password must contains more than 7 characters")
                      ]),
                      obscureText: _obsecure,
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
                      bottom: 15,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffFF00B7),
                        minimumSize: Size.fromHeight(50), // NEW
                      ),
                      child: const Text('LOGIN'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => accountType(),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 45),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ),
                            );
                          },
                          child: Text(
                            "Register now",
                            style: TextStyle(
                              color: Color(0xffe70b89),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 45),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResetPassword(),
                              ),
                            );
                          },
                          child: Text(
                            "Reset Password",
                            style: TextStyle(
                              color: Color(0xffe70b89),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text("or login with"),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 40,
                      right: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: Image.asset(
                            "assets/facebook.png",
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          child: Image.asset("assets/google.png"),
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          child: Image.asset("assets/apple.png"),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 30,
                        ),
                        child: Text(
                          "By signing up, you are agree with our",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Terms & Conditions",
                            style: TextStyle(
                              color: Color(0xffe70b89),
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
