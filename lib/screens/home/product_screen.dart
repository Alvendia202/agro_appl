import 'package:agro_appl/components/products.dart';
import 'package:flutter/material.dart';

import '../product_details/detail.dart';
import 'product_card.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  static String routeName = "/products";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            itemCount: Products.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.7,
              mainAxisSpacing: 20,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) => ProductCard(
              product: Products[index],
              onPress: () => Navigator.pushNamed(
                context,
                DetailsScreen.routeName,
                arguments:
                    ProductDetailsArguments(product: Products[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}