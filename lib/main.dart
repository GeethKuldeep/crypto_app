
import 'package:crypto_app/screens/chat_screen.dart';
import 'package:crypto_app/screens/landing_screen.dart';
import 'package:crypto_app/screens/login_screen.dart';
import 'package:crypto_app/screens/registration_screen.dart';
import 'package:crypto_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Crypto());
}

class Crypto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LandingScreen.id ,
        routes:{
          LandingScreen.id:(context)=> LandingScreen(),
          WelcomeScreen.id:(context)=> WelcomeScreen(),
          LoginScreen.id:(context)=> LoginScreen(),
          RegistrationScreen.id:(context)=> RegistrationScreen(),
          ChatScreen.id:(context)=> ChatScreen(),
        }
    );
  }
}
