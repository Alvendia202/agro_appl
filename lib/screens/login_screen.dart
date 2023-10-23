import 'package:agro_appl/screens/home_screen.dart';
import 'package:agro_appl/screens/signup_screen.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'assets/images/agro.jpg',
              height: 130,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: const TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Username',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black), 
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              style: const TextStyle(fontSize: 18, color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black), 
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              shape: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(15),
              color: Color.fromARGB(255, 0, 117, 10),
              onPressed: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
             const SizedBox(
              height: 20,
            ),
            Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Have an account?',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Signup',
                          style: TextStyle(fontSize: 18,
                          color: Colors.red),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(SignupScreen.routeName);
                        },
                      ),
          ],
        ),
          ],
      ),
      ),
    );
  }
}