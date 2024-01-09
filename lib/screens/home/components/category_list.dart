// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function ()? onTap;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color[100],
          boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 206, 206, 206),
                offset: Offset(0, 3),
              ),
            ],
        ),
        child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    // item image
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    ),
    SizedBox(
      height: 10, // Customize the height as needed
    ),
    // item name
    Text(
      itemName,
      style: TextStyle(
        fontSize: 13,
      ),
    ),
  ],
),
      ),
      ),
    );
  }
}