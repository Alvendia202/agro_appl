import 'package:agro_appl/category/list/properties.dart';
import 'package:flutter/material.dart';

class CropsList extends ChangeNotifier {
  final List<Item> crops = [
    Item(
      id: 1,
      images: [
        "assets/images/veges.png",
        "assets/images/veges.png",
      ],
      desc: "Agriculture",
      name: 'Apple',
      unit: 'Kg',
      price: 20,
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Item(
      id: 2,
      images: [
        "assets/images/veges.png",
        "assets/images/veges.png",
      ],
      desc: "Agriculture",
      name: 'Mango',
      unit: 'Doz',
      price: 30,
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Item(
      id: 3,
      images: [
        "assets/images/veges.png",
        "assets/images/veges.png",
      ],
      desc: "Agriculture",
      name: 'Banana',
      unit: 'Doz',
      price: 10,
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Item(
      id: 4,
      images: [
        "assets/images/veges.png",
        "assets/images/veges.png",
      ],
      desc: "Agriculture",
      name: 'Grapes',
      unit: 'Kg',
      price: 8,
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Item(
      id: 4,
      images: [
        "assets/images/veges.png",
        "assets/images/veges.png",
      ],
      desc: "Agriculture",
      name: 'Water Melon',
      unit: 'Kg',
      price: 25,
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
  ];
}
