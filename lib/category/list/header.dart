// ignore_for_file: unused_import

import 'package:agro_appl/screens/cart/cart_page.dart';
import 'package:agro_appl/screens/home-menu/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_outlined,
                size: 18, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 150,
            ),
            child: Center(
              child: Text('Crops list',
                  style: GoogleFonts.notoSerif(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          Spacer(),
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -1, end: -1),
            showBadge: true,
            ignorePointer: false,
            onTap: () {},
            badgeContent: Text(
              '2',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            badgeAnimation: badges.BadgeAnimation.rotation(
              animationDuration: Duration(seconds: 1),
              colorChangeAnimationDuration: Duration(seconds: 1),
              loopAnimation: false,
              curve: Curves.fastOutSlowIn,
              colorChangeAnimationCurve: Curves.easeInCubic,
            ),
            badgeStyle: badges.BadgeStyle(
              shape: badges.BadgeShape.circle,
              badgeColor: Colors.red,
            ),
            child: IconButton(
              icon: const Icon(Icons.shopping_bag_outlined,
                  color: Color.fromARGB(255, 0, 196, 104), size: 20),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CartPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
