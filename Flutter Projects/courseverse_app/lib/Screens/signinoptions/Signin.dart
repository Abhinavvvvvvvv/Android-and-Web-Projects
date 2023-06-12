import 'package:courseverse_app/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:courseverse_app/Screens/signinoptions/Signup.dart';
import 'package:courseverse_app/Services/Authentication.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Authentication authentication = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 200.0),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: TextButton.icon(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: HomeScreen(),
                              type: PageTransitionType.rightToLeftWithFade));
                      ;
                    },
                    icon: Icon(FontAwesomeIcons.google),
                    label: Text('Sign in with Google')),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: TextButton.icon(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () async {
                      await authentication.googleSignIn();
                    },
                    icon: Icon(FontAwesomeIcons.facebook),
                    label: Text('Sign in with Facebook')),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: TextButton.icon(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      print('Google Sign in...');
                    },
                    icon: Icon(FontAwesomeIcons.apple),
                    label: Text('Sign in with Apple')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Row(
                  children: [
                    Text(
                      'New Here?',
                      style: TextStyle(color: Colors.white),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: SignUp(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Text(
                        'Create an Account',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/home.jpeg'),
                fit: BoxFit.fitHeight,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
      ),
    );
  }
}
