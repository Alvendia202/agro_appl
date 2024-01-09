// ignore_for_file: unused_import, unused_local_variable

import 'package:agro_appl/category/list/cropslist.dart';
import 'package:agro_appl/category/list/header.dart';
import 'package:agro_appl/category/tile.dart';
import 'package:agro_appl/list/product_list.dart';
import 'package:agro_appl/screens/cart/components/cart_screen.dart';
import 'package:agro_appl/theme.dart';
import 'package:agro_appl/screens/cart/components/cart_detail.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';

import '../screens/product_details/detail.dart';

class CropsPage extends StatefulWidget {
  const CropsPage({super.key});

  static String routeName = "/products";

  @override
  State<CropsPage> createState() => _CropsPageState();
}

class _CropsPageState extends State<CropsPage> {
  void navigateToProductsDetails(int index) {
    final cropsList = context.read<CropsList>();
    final Item = cropsList.crops;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductList(
          products: Item[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cropList = context.read<CropsList>();
    final products = cropList.crops;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [titleTextColor, dotColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.1, 0.9],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.all(10.0),
                  shrinkWrap: true,
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return ProductTile(
                      item: products[index],
                      onPress: () => navigateToProductsDetails(index),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
