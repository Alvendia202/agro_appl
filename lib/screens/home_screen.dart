// ignore_for_file: unused_import

import 'package:agro_appl/screens/cart_page.dart';
import 'package:agro_appl/screens/cart_screen.dart';
import 'package:agro_appl/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../list/menulist.dart';
import '../model/cartmodel.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset('assets/images/logo.jpg',
        width: 100, 
        height: 40,
      ),
        ),
        leading: IconButton(
    icon: const Icon(Icons.menu,
    color: Colors.black,
    size: 20),
    onPressed: () {
      // Add your onPressed functionality here.
    },
  ),
  actions: [
          IconButton(
            onPressed: (){
            },
              icon: const Icon(Icons.favorite_outline_rounded,
              color: Colors.black,
              size: 20,
              ),
            ),
          IconButton (
            onPressed: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CartPage()
              ),
              );
            },
            icon: const Icon(Icons.shopping_cart_outlined,
            color: Colors.black,
            size: 20,
            ),
          ),
        ],
        ),
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
          const SizedBox(height: 48),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('Good Day!'),
          ),

          const SizedBox(height: 4),

          // Let's order fresh items for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you",
              style: GoogleFonts.notoSerif(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 24),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),

          const SizedBox(height: 24),

          // categories -> horizontal listview
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Products Menu",
              style: GoogleFonts.notoSerif(
                //fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  padding: const EdgeInsets.all(12),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () =>
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart(index),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
                  ),
      
    );
  }
}