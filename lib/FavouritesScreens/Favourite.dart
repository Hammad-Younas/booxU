import 'package:booxu/FavouritesScreens/Favourites2.dart';
import 'package:booxu/FavouritesScreens/Favourites3.dart';
import 'package:flutter/material.dart';

import '../Constants/CustomColor.dart';
import '../Constants/CustomWidgets.dart';
import 'Favourites1.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
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
            PageName: "Favorites",
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                    labelColor: Colors.black,
                    indicatorColor: CustomColors.Primary,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 3,
                    tabs: [
                      Tab(text: "Services"),
                      Tab(text: "Users"),
                      Tab(text: "Companies"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Favourites1(),
                    Favourites2(),
                    Favourites3(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
