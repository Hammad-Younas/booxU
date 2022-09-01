import 'package:flutter/material.dart';

class StaffProfileAbout extends StatelessWidget {
  const StaffProfileAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    top: 20,
                    bottom: 5,
                  ),
                  child: Text("About"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xffee1a92),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Container(
                    height: 125,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lorem Ipsum is simply dummy text of the \n"
                            "printing and typesetting industry. Lorem\n"
                            "Ipsum has been the industry's standard \n"
                            "dummy text ever since the 1500s, when \n"
                            "an unknown printer took a galley of type\n",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    top: 10,
                    bottom: 5,
                  ),
                  child: Text("Policy"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xffee1a92),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Container(
                    height: 125,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lorem Ipsum is simply dummy text of the \n"
                            "printing and typesetting industry. Lorem\n"
                            "Ipsum has been the industry's standard \n"
                            "dummy text ever since the 1500s, when \n"
                            "an unknown printer took a galley of type\n",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
