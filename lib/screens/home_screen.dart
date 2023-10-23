import 'package:agro_appl/screens/cart_screen.dart';
import 'package:flutter/material.dart';

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
              MaterialPageRoute(builder: (context) => const CartScreen()
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
        body: SingleChildScrollView (
            child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
         Container(
           padding: const EdgeInsets.all(15),
                width: double.infinity,
                color: Colors.white,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                          color: Colors.transparent, 
                          width: 10.0, 
                  ),
                ),
                        hintText: 'search here',
                        contentPadding: const EdgeInsets.all(15),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                          ),
                          suffixIcon: const Icon(Icons.search,
                          color:Color.fromRGBO(0, 0, 0, 1),
                        ),       
              ),
            ),
            ),
        ),  
              ],
              ),

        ),
        );
}
}