import 'package:flutter/material.dart';

import 'package:agro_appl/screens/home/components/slider.dart';
import 'package:agro_appl/screens/home/components/homeheader.dart';
import 'package:agro_appl/screens/home/components/searchpage.dart';
import '../login/components/bg-image.dart';
import '../popularproducts/popularproducts.dart';
import 'components/categories.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
    Scaffold(
          backgroundColor: Colors.transparent,
           body: SingleChildScrollView(
            child: SafeArea(
          child: Column(
            children: [
              HomeWidget(),
              SearchPage(),
              SlideImages(),
              Categories(),
              PopularProducts(),
            ],
          ),
        ),
      ),
    ),
      ],
    );
  }
}