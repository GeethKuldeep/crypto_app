import 'package:flutter/material.dart';

class StockList extends StatefulWidget {
  @override
  _StockListState createState() => _StockListState();
}

class _StockListState extends State<StockList> {
  var color3 = Color(0xff1B4B4A);

  var color1 = Color(0xffFF593D);

  var color2 = Color(0xffF2F9FC);

  var color4 = Color(0xffAFD8D7);

  bool pressAttention1 = false;

  bool pressAttention2 = false;

  bool pressAttention3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      body:Padding(
        padding: const EdgeInsets.only(left:50.0,right: 50,top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(child: Text('Crypto List',style:TextStyle(color: color3,fontWeight:FontWeight.bold,fontSize: 35))),
            SizedBox(height: 25,),
            Center(
              child: Container(
                width: 286,
                height: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: Colors.white,
                ),

                child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {
                            setState(() {
                              pressAttention1 = !pressAttention1;
                              pressAttention2 = false;
                              pressAttention3 = false;

                            });
                          },
                          color: pressAttention1 ? color1 : Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,right: 8.0),
                            child: Text(
                              'daily',
                              style: TextStyle(
                                fontSize: 15,
                                color:
                                pressAttention1 ? Colors.white : color3,
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: pressAttention2 ? color1 : Colors.white,
                          onPressed: () {
                            setState(() {
                              pressAttention2 = !pressAttention2;
                              pressAttention1 = false;
                              pressAttention3 = false;

                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,right: 8.0),
                            child: Text(
                              'weekly',
                              style: TextStyle(
                                fontSize: 15,
                                color:
                                pressAttention2 ? Colors.white : color3,
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: pressAttention3 ? color1 : Colors.white,
                          onPressed: () {
                            setState(() {
                              pressAttention3 = !pressAttention3;
                              pressAttention1 = false;
                              pressAttention2 = false;

                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,right: 8.0),
                            child: Text(
                              'monthly',
                              style: TextStyle(
                                fontSize: 15,
                                color:
                                pressAttention3 ? Colors.white : color3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

              ),
            ),
            SizedBox(height: 25,),
            Stack(
                children: [
                  Image.asset('images/Rectangle.png'),
                  Image.asset('images/graph.png'),


        ]
            ),
            SizedBox(height: 15,),
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
                              top: 15.0, bottom: 15.0),
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
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),

          ],
        ),
      )
    );
  }
}
