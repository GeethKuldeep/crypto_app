import 'package:crypto_app/screens/Add_stock_screen.dart';
import 'package:crypto_app/screens/Stock_List_screen.dart';
import 'package:crypto_app/screens/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getcurrentUser();
    super.initState();
  }

  final _auth = FirebaseAuth.instance;
  User loggedInUser;
  int currentPage = 1;
  var color1 =  Color(0xffFF593D);
  var color2 = Color(0xffF2F9FC);
  var color3 = Color(0xffAFD8D7);
  void getcurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }
  _getPage(int page) {
    switch (page) {
      case 0:
        return StockList();
      case 1:
        return AddStock();
      case 2:
        return Profile();
      default:
        return AddStock();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      floatingActionButton: SizedBox(
        height:70,
        width: 70,
        child: FloatingActionButton(

            backgroundColor: Colors.white,
            child: Icon(Icons.add,size: 45,),
            foregroundColor: color1,
            onPressed: (){
              setState(() {
                currentPage =1;
              });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 65,
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                    color: Colors.white,
                  onPressed: (){
                    setState(() {
                      currentPage = 0;
                    });
                  },
                    child: Image.asset('images/Stock.png')
                ),
                FlatButton(
                    color: Colors.white,
                    onPressed: (){
                      setState(() {
                        currentPage = 2;
                      });
                    },
                    child: Image.asset('images/Profile.png')
                ),
              ],
            ),
          ),
        ),
      ),
      body:Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
    );
  }
}
