import 'package:agro_appl/category/list/properties.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile ({
  Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.item,
    required this.onPress, 
  }) : super(key: key);

  final double width, aspectRetio;
  final Item item;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
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
                child: Image.asset(item.images[0], fit: BoxFit.cover,
                ),

         ),
            const SizedBox(height: 8),
                          RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            text: TextSpan(
                                text: 'Name: ',
                                style: TextStyle(
                                    color: Colors.blueGrey.shade800,
                                    fontSize: 16.0),
                                children: [
                                  TextSpan(
                                      text:
                                          '${item.name}\n',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                          RichText(
                            maxLines: 1,
                            text: TextSpan(
                                text: 'Unit: ',
                                style: TextStyle(
                                    color: Colors.blueGrey.shade800,
                                    fontSize: 16.0),
                                children: [
                                  TextSpan(
                                      text:
                                          '${item.unit}\n',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                          RichText(
                            maxLines: 1,
                            text: TextSpan(
                                text: 'Price: ' r"$",
                                style: TextStyle(
                                    color: Colors.blueGrey.shade800,
                                    fontSize: 16.0),
                                children: [
                                  TextSpan(
                                      text:
                                          '${item.price}\n',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                        ],
                      ),
      ),
      ),  
            );
  }
}