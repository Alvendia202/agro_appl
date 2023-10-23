import 'package:agro_appl/screens/getstart_screen.dart';
import 'package:flutter/material.dart';

import './screens/login_screen.dart';
import './screens/signup_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetStartedScreen(),
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignupScreen.routeName: (ctx) => const SignupScreen(),
        HomeScreen.routeName: (ctx) => const HomeScreen(),
      },
    );
  }
}