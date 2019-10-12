import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'registration_screen.dart';
import 'login_screen.dart';
import 'scratch.dart';

void main() => runApp(Vayudh());

class Vayudh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
          textTheme: TextTheme(
            body1: TextStyle(color: Colors.black54),
          ),
        ),
        home: WelcomeScreen(),
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          //ChatScreen.id: (context) => ChatScreen(),
        });
  }
}
