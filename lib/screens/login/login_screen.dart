import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme.dart';
import '../home/home_screen.dart';
import 'components/bg-image.dart';
import './components/widgets.dart';
import 'components/button-image.dart';
import 'signup/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Container(
                    height: 150,
                    child: Center(
          child: Image.asset('assets/images/agro.png',
        width: 100, 
        height: 100,
      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal:  10),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            Text(
                              'Forgot Password?',
                              style: kBodyText,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            RoundedButton(
                              buttonText: 'Log in', 
                              onTap: () { Navigator.pushNamed(context, HomeScreen.routeName);},
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
      "or continue with",
      style: kBodyText,
    ),
    SizedBox(
                              height: 10,
                            ),
                         
                            ButtonLogo(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      "Don't have an account?",
      style: kBodyText,
    ),
    const SizedBox(width: 4),
    TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(SignupScreen.routeName);
      },
      child: Text(
        "Register",
        style: kFontText,
      ),
    ),
  ],
),
                          ], 
          
        ),
        
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        )
                      
                    ),
                      ],
                  ),
                  ),
                
              ),
            ),
      ],
    );
  }
}