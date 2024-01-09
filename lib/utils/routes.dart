import 'package:agro_appl/screens/home/home_screen.dart';
import 'package:agro_appl/screens/product_details/detail.dart';
import 'package:flutter/widgets.dart';
import 'package:agro_appl/screens/cart/cart_page.dart';

import '../screens/login/login_screen.dart';
import '../screens/login/signup/signup_screen.dart';

final Map<String, WidgetBuilder> routes = {
  CartPage.routeName: (cxt) => const CartPage(),
  LoginScreen.routeName: (ctx) => LoginScreen(),
  SignupScreen.routeName: (ctx) => const SignupScreen(),
  HomeScreen.routeName: (ctx) => HomeScreen(),
  DetailsScreen.routeName: (ctx) => const DetailsScreen(), 
};