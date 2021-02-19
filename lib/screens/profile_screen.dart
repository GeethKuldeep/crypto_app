import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _auth = FirebaseAuth.instance;

  var color3 = Color(0xff1B4B4A);

  var color1 = Color(0xffFF593D);

  var color2 = Color(0xffF2F9FC);

  var color4 = Color(0xffAFD8D7);

  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;
  bool pressAttention4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color2,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: color4,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(55),
                          bottomRight: Radius.circular(55))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                  height: 95,
                                  width: 95,
                                  child: Image.asset('images/logo.png')),
                              Text(
                                'Clean Pegasus',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 78.0),
                                child: IconButton(
                                    icon: Icon(Icons.logout),
                                    color: Colors.white,
                                    iconSize: 30,
                                    onPressed: () {
                                      _auth.signOut();
                                      Navigator.pop(context);
                                    }),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                      height: 100,
                    ),
                Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My List',
                            style: TextStyle(
                                fontSize: 25,
                                color: color3,
                                fontWeight: FontWeight.bold),
                          ),
                          ToggleSwitch(
                            minWidth: 55.0,
                            minHeight: 28,
                            cornerRadius: 10.0,
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
                SizedBox(
                      height: 15,
                    ),
                Expanded(
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (BuildContext ctxt, int Index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, bottom: 25.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Bitcoin',
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: color1,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'BTC',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: color4,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '₹9,497.12',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                      Text(
                                        '₹210.65',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),

              ],
            ),
            Positioned(
              top: 150,
              left: 12,
              right: 12,
              child: Container(
                width: 150,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onPressed: () {
                            setState(() {
                              pressAttention1 = !pressAttention1;
                              pressAttention2 = false;
                              pressAttention3 = false;
                              pressAttention4 = false;
                            });
                          },
                          color: pressAttention1 ? color1 : Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  '8',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color:
                                        pressAttention1 ? Colors.white : color3,
                                  ),
                                ),
                                Text(
                                  'List',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        pressAttention1 ? Colors.white : color3,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: pressAttention2 ? color1 : Colors.white,
                          onPressed: () {
                            setState(() {
                              pressAttention2 = !pressAttention2;
                              pressAttention1 = false;
                              pressAttention3 = false;
                              pressAttention4 = false;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  '5',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color:
                                        pressAttention2 ? Colors.white : color3,
                                  ),
                                ),
                                Text(
                                  'Buy',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        pressAttention2 ? Colors.white : color3,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: pressAttention3 ? color1 : Colors.white,
                          onPressed: () {
                            setState(() {
                              pressAttention3 = !pressAttention3;
                              pressAttention1 = false;
                              pressAttention2 = false;
                              pressAttention4 = false;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color:
                                        pressAttention3 ? Colors.white : color3,
                                  ),
                                ),
                                Text(
                                  'Sell',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        pressAttention3 ? Colors.white : color3,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: pressAttention4 ? color1 : Colors.white,
                          onPressed: () {
                            setState(() {
                              pressAttention4 = !pressAttention4;
                              pressAttention1 = false;
                              pressAttention2 = false;
                              pressAttention3 = false;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color:
                                        pressAttention4 ? Colors.white : color3,
                                  ),
                                ),
                                Text(
                                  'Knowtify',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        pressAttention4 ? Colors.white : color3,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
