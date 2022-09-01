import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/CustomColor.dart';

class Favourites1 extends StatelessWidget {
  const Favourites1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FavoritesServices(
              CircleImage: "assets/images/services/renovation.jpg",
              heading: "RENOVATION WORKS",
              subheading: "Renovate you homes and offices",
            ),
          ],
        ),
      ),
    );
  }
}

class FavoritesServices extends StatelessWidget {
  String CircleImage, heading, subheading;
  FavoritesServices({
    Key? key,
    required this.CircleImage,
    required this.heading,
    required this.subheading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 30, right: 30),
      height: 95,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 5),
            color: Colors.black12,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomColors.Secondary,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage(CircleImage),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.52,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        heading,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset("assets/heart.svg",
                          color: CustomColors.Primary),
                    ),
                  ],
                ),
              ),
              Text(
                subheading,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff565455),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Services",
                        style: TextStyle(
                          fontSize: 15,
                          color: CustomColors.Secondary,
                        ),
                      ),
                    ),
                    Container(
                      height: 19,
                      width: 55,
                      decoration: BoxDecoration(
                        color: CustomColors.Primary,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          "BOOK",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Charges",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "\$1000.0/20 Minutes",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "No Location Provided",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
