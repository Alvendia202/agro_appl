import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../theme.dart';
import '../components/bg-image.dart';
import '../components/button-image.dart';
import '../components/button.dart';
import '../components/password-input.dart';
import '../components/username-input.dart';
import '../login_screen.dart';
import 'components/user-type.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/signup';

  const SignupScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Background(),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    child: Center(
                      child: Image.asset(
                        'assets/images/agro.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: FontAwesomeIcons.user,
                              hint: 'Name',
                              inputType: TextInputType.name,
                              inputAction: TextInputAction.next,
                            ),
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
                            TextInput(
                              icon: FontAwesomeIcons.phone,
                              hint: 'Phone no.',
                              inputType: TextInputType.number,
                              inputAction: TextInputAction.next,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                              UserType(),
                              SizedBox(
                              height: 10,
                            ),
                            RoundedButton(
                              buttonText: 'Register',
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(LoginScreen.routeName);
                              },
                            ),
                             SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                    "or register with",
                                    style: kBodyText,
                                  ),
                            ),
                          SizedBox(
                              height: 20,
                            ),
                            ButtonLogo(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already registered?",
                                  style: kBodyText,
                                ),
                                const SizedBox(width: 4),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                                  },
                                  child: Text(
                                    "Log in",
                                    style: kFontText,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                              height: 40,
                            ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}