import 'package:booxu/Constants/CustomWidgets.dart';
import 'package:flutter/material.dart';

import '../Constants/CustomColor.dart';

class Message1 extends StatelessWidget {
  const Message1({Key? key}) : super(key: key);

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
            PageName: "Janet Fowler",
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 25,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CustomColors.Secondary,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 35,
                          width: 35,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/beauty/other.jpg"),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              margin: EdgeInsets.only(top: 10, left: 10),
                              height: 80,
                              width: 260,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              margin: EdgeInsets.only(right: 40),
                              height: 60,
                              width: 240,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 25,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: CustomColors.Secondary,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 35,
                          width: 35,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/beauty/other.jpg"),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              margin: EdgeInsets.only(top: 10, left: 10),
                              height: 80,
                              width: 260,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 55,
                color: Color(0xff2b2b2b),
                child: TextFormField(
                  cursorColor: Color(0xffee1a92),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      left: 20,
                      top: 15,
                    ),
                    border: InputBorder.none,
                    hintText: "Type your message",
                    hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: CustomColors.Primary,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.send_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
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
