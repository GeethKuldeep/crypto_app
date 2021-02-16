import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';


class AddStock extends StatelessWidget {
  final TextEditingController _crptoController = TextEditingController();
  final FocusNode _crptoFocusNode = FocusNode();
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13.0),
              ),
              color: color4,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Get Knowtified!',style: GoogleFonts.raleway(color:color3 ,fontSize: 30,fontWeight: FontWeight.bold)),
                        SizedBox(height: 15,),
                        TextFormField(
                          style: GoogleFonts.rambla(color: color1),
                          cursorColor: Colors.white,
                          key: ValueKey("Bitcoin"),
                          controller: _crptoController,
                          focusNode: _crptoFocusNode,
                          decoration: InputDecoration(
                            suffixIcon: new Icon(Icons.search),
                            hintText: 'Bitcoin',
                            fillColor: color2,
                            filled: true,
                            labelStyle: TextStyle(color: Colors.white,fontSize: 15,decorationColor: Colors.white),
                            contentPadding: const EdgeInsets.all(8.0),
                            errorBorder: new OutlineInputBorder(borderSide: new BorderSide(color: Colors.white, width: 2.0,), borderRadius: BorderRadius.circular(12.0),),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: color2, width: 2.0,), borderRadius: BorderRadius.circular(20.0),),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: color2, width: 2.0,),borderRadius: BorderRadius.circular(20.0)),
                            //errorStyle: TextStyle(color: color1,),
                          ),
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
