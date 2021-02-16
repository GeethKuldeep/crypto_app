
import 'package:crypto_app/screens/Splash_screen.dart';
import 'package:crypto_app/screens/home_screen.dart';
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
        initialRoute: SplashScreen.id,
        routes:{
          LandingScreen.id:(context)=> LandingScreen(),
          SplashScreen.id:(context)=> SplashScreen(),
          WelcomeScreen.id:(context)=> WelcomeScreen(),
          LoginScreen.id:(context)=> LoginScreen(),
          RegistrationScreen.id:(context)=> RegistrationScreen(),
          HomeScreen.id:(context)=> HomeScreen(),
        }
    );
  }
}
