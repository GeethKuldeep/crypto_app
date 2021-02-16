import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AddStock extends StatelessWidget {
  var color3 =Color(0xff1B4B4A);
  var color1 =  Color(0xffFF593D);
  var color2 = Color(0xffF2F9FC);
  var color4 = Color(0xffAFD8D7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                Text('Get Knowtified!',style: GoogleFonts.raleway(color:color3 ,fontSize: 50,fontWeight: FontWeight.bold))
              ],
            ),
          )
        ],
      ),
    );
  }
}
