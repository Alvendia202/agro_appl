import 'package:flutter/material.dart';

class ButtonLogo extends StatelessWidget {
  const ButtonLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Logo(
          imagePath: 'assets/images/google.png',
          label: 'Google',
        ),
        const SizedBox(width: 3),
        Logo(
          imagePath: 'assets/images/apple.png',
          label: 'Apple',
        ),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  final String imagePath;
  final String label;

  const Logo({
    Key? key,
    required this.imagePath,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle the button click event here
        print('Button clicked: $imagePath');
      },
      child: Container(
        width: 238,
        height: 40,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 40,
              height: 20,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}