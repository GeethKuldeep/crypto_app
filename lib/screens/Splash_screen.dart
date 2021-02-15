import 'dart:async';


import 'package:crypto_app/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SplashScreen extends StatefulWidget {
  static const String id ='splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => LandingScreen())));
    print('timer done');
  }
  var color1 =  Color(0xffFF593D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:color1 ,
      body: Center(

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 110,
                  width: 110,
                  child: Image.asset('images/splash.png')),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 25,),
                  Text('Now sit back \n And wait to be notified',style: GoogleFonts.raleway(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
            CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ]
        ),
      ),
    );
  }
}