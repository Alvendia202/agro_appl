import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color.fromARGB(255, 198, 255, 220)],
            begin: Alignment.topCenter,  
            end: Alignment.bottomCenter,
            stops: const [0.1, 0.9],
          ),
        ),
      
    );
  }
}