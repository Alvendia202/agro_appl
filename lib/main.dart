import 'package:agro_appl/category/list/cropslist.dart';
import 'package:agro_appl/model/cartmodel.dart';
import 'package:agro_appl/screens/get_started/getstart_screen.dart';
import 'package:agro_appl/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CropsList()),
      ],
       child: const MyApp(),
    ),
       );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
      title: 'Agro_appl',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetStartedScreen(),
      routes: routes,
      ),
    );
  }
}