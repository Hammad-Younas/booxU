import 'package:flutter/material.dart';

import '../Constants/CustomColor.dart';

class StaffProfileReviews extends StatelessWidget {
  const StaffProfileReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2, 5),
                      blurRadius: 10,
                      color: Colors.black12),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              height: 50,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
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
                          AssetImage("assets/images/services/renovation.jpg"),
                    ),
                  ),
                  Text("Shahid Saeed"),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 5),
                    blurRadius: 10,
                    color: Colors.black12,
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              height: 50,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
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
                          AssetImage("assets/images/services/renovation.jpg"),
                    ),
                  ),
                  Text("Shahid Saeed"),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 5),
                    blurRadius: 10,
                    color: Colors.black12,
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              height: 50,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
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
                          AssetImage("assets/images/services/renovation.jpg"),
                    ),
                  ),
                  Text("Shahid Saeed"),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                        ),
                        Icon(
                          Icons.star,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 5),
                    blurRadius: 10,
                    color: Colors.black12,
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              height: 50,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
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
                          AssetImage("assets/images/services/renovation.jpg"),
                    ),
                  ),
                  Text("Shahid Saeed"),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.Primary,
                        ),
                        Icon(
                          Icons.star,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
