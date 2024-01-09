import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/product_card.dart';
import '../product_details/detail.dart';
import '../../components/products.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({super.key});

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Best selling 🔥",
                style: GoogleFonts.notoSerif(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 22, 22, 22),
                  ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                Products.length,
                (index) {
                  if (Products[index].isPopular) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ProductCard(
                        product: Products[index],
                        onPress: () => Navigator.pushNamed(
                          context,
                          DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                              product: Products[index]),
                        ),
                      ),
                    );
                  }

                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}