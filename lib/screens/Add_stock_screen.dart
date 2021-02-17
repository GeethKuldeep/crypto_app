import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AddStock extends StatelessWidget {
  final TextEditingController _crptoController = TextEditingController();
  final FocusNode _crptoFocusNode = FocusNode();
  final TextEditingController _priceController = TextEditingController();
  final FocusNode _priceFocusNode = FocusNode();
  final TextEditingController _lockpriceController = TextEditingController();
  final FocusNode _lockpriceFocusNode = FocusNode();
  var color3 = Color(0xff1B4B4A);
  var color1 = Color(0xffFF593D);
  var color2 = Color(0xffF2F9FC);
  var color4 = Color(0xffAFD8D7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 55, bottom: 10),
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
                    Text('Get Knowtified!',
                        style: GoogleFonts.raleway(
                            color: color3,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: SizedBox(
                            height: 45,
                            child: TextFormField(
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
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    decorationColor: Colors.white),
                                contentPadding: const EdgeInsets.all(8.0),
                                errorBorder: new OutlineInputBorder(
                                  borderSide: new BorderSide(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: color2,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: color2,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                //errorStyle: TextStyle(color: color1,),
                              ),
                              autocorrect: false,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: Card(
                              child: Center(child: Text('00.0000')),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ToggleSwitch(
                  minWidth: 75.0,
                  minHeight: 35,
                  cornerRadius: 12.0,
                  fontSize: 18,
                  activeBgColor: color1,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: color4,
                  labels: ['buy', 'sell'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ],
            ),
          ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Lock a Price',
                            style: GoogleFonts.raleway(
                                color: color3,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Flexible(
                          child: SizedBox(
                            width: 75,
                            height: 45,
                            child: TextFormField(
                              style: GoogleFonts.rambla(color: color1),
                              cursorColor: Colors.white,
                              key: ValueKey("lock"),
                              controller: _lockpriceController,
                              focusNode: _lockpriceFocusNode,
                              decoration: InputDecoration(
                                hintText: '00.0000',
                                fillColor: color2,
                                filled: true,
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    decorationColor: Colors.white),
                                contentPadding: const EdgeInsets.all(8.0),
                                errorBorder: new OutlineInputBorder(
                                  borderSide: new BorderSide(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: color2,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: color2,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                //errorStyle: TextStyle(color: color1,),
                              ),
                              autocorrect: false,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 110,
                  height: 35,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: color1,
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Add',style: TextStyle(color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
