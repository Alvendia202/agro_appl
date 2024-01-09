import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../category/crops.dart';
import '../../../category/fruits.dart';
import '../../../category/meat.dart';
import '../../../category/vegetable.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Widget> categoryItems = [
    CropsPage(),
    FruitsPage(),
    VegetablesPage(),
    MeatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "image": "assets/images/crops.png",
        "text": "Grains",
        "color": Color.fromARGB(255, 142, 255, 146)
      },
      {
        "image": "assets/images/fruits.png",
        "text": "Fruits",
        "color": const Color.fromARGB(255, 255, 245, 160)
      },
      {
        "image": "assets/images/veges.png",
        "text": "Vegetable",
        "color": Color.fromARGB(255, 255, 210, 193)
      },
      {
        "image": "assets/images/meat.png",
        "text": "Meat",
        "color": Color.fromARGB(255, 91, 164, 223)
      },
      {
        "image": "assets/images/veges.png",
        "text": "Specials",
        "color": Color.fromARGB(255, 255, 146, 96)
      },
    ];

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Categories",
                style: GoogleFonts.notoSerif(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 22, 22, 22),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              categories.length,
              (index) => CategoryCard(
                image: categories[index]["image"],
                text: categories[index]["text"],
                color: categories[index]["color"],
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => categoryItems[index],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final color;

  const CategoryCard({
    Key? key,
    required this.image,
    required this.text,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String image, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(13),
            height: 70,
            width: 80,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4),
          Text(text, textAlign: TextAlign.center)
        ],
      ),
    );
  }
}
