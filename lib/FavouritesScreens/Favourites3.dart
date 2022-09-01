import 'package:booxu/FavouritesScreens/Favourites1.dart';
import 'package:flutter/material.dart';

class Favourites3 extends StatelessWidget {
  const Favourites3({Key? key}) : super(key: key);

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
