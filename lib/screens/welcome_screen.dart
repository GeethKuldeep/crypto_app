
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


enum EmailSignInFormType { signIn, register }


class WelcomeScreen extends StatefulWidget {
  static const String id ='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  var _formkey =GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
   final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _password1FocusNode = FocusNode();
  EmailSignInFormType _formType = EmailSignInFormType.signIn;
  bool _passwordVisible = false;
  AnimationController controller;
  Animation animation;
  var color1 =  Color(0xffFF593D);
  var color2 = Color(0xffF2F9FC);
  var color3 = Color(0xffAFD8D7);
  @override
  void initState() {
   controller = AnimationController(vsync: this,duration: Duration(seconds: 1));
   animation = ColorTween(begin: Colors.yellow,end: Colors.white).animate(controller);
   controller.forward();
   controller.addListener(() {
     setState(() {
       print(animation.value);
       print(controller.value);
     });
   });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  void _toggleFormType() {
    setState(() {

      _formType =_formType== EmailSignInFormType.signIn ? EmailSignInFormType.register : EmailSignInFormType.signIn;
    });
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final primaryText = _formType == EmailSignInFormType.signIn
        ? 'Login In'
        : 'SIGN UP';
    final secondaryText = _formType == EmailSignInFormType.signIn
        ? 'Need an account? \n         Sign up'
        : 'Have an account? \n         Sign in';


    return Scaffold(
      backgroundColor:color1 ,
      body:Column(
          children: [
            SizedBox(height: 100,),
            Text('Knowtify',style: GoogleFonts.raleway(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold)),
            SizedBox(
              height: 100,
                width: 100,
                child: Image.asset('images/logo.png')),
            SizedBox(height: 75,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: color2,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25,left: 45,right: 45),
                  child: Form(
                    key: _formkey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 35,),
                          TextFormField(
                            style: GoogleFonts.rambla(color: color1),
                            cursorColor: Colors.white,
                            key: ValueKey("email"),
                            validator: (value){
                              if (value.isEmpty || !value.contains('@gmail')){
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            controller: _emailController,
                            focusNode: _emailFocusNode,
                            decoration: InputDecoration(
                              fillColor: color3,
                              filled: true,
                              labelStyle: TextStyle(color: Colors.white,fontSize: 15,decorationColor: Colors.white),
                              contentPadding: const EdgeInsets.all(8.0),
                              errorBorder: new OutlineInputBorder(borderSide: new BorderSide(color: Colors.white, width: 2.0,), borderRadius: BorderRadius.circular(12.0),),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: color1, width: 2.0,), borderRadius: BorderRadius.circular(20.0),),
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: color3, width: 2.0,),borderRadius: BorderRadius.circular(20.0)),
                              labelText: 'Email ID',
                              //errorStyle: TextStyle(color: color1,),
                            ),
                            autocorrect: false,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(height: 25,),
                          TextFormField(
                            style: GoogleFonts.rambla(color: color1),
                            cursorColor: Colors.white,
                            key: ValueKey("password1"),
                            validator: (value){
                              if (value.isEmpty || value.length<7){
                                return 'Please enter atleast 7 characters';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              fillColor: color3,
                              filled: true,
                              labelStyle: TextStyle(color: Colors.white,fontSize: 15,decorationColor: Colors.white),
                              contentPadding: const EdgeInsets.all(8.0),
                              errorBorder: new OutlineInputBorder(borderSide: new BorderSide(color: Colors.white, width: 2.0,), borderRadius: BorderRadius.circular(12.0),),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: color1, width: 2.0,), borderRadius: BorderRadius.circular(20.0),),
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: color3, width: 2.0,),borderRadius: BorderRadius.circular(20.0)),
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Update the state i.e. toogle the state of passwordVisible variable
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              //errorStyle: TextStyle(color: color1,),
                            ),
                            controller: _passwordController,
                            focusNode: _password1FocusNode,

                            //textInputAction: TextInputAction.done,
                            //onEditingComplete: _submit,
                            obscureText: !_passwordVisible,
                          ),
                          SizedBox(height: 15,),

                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RaisedButton(
                                    child: Text(primaryText,style: TextStyle(color: Colors.white),),
                                    shape:  RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                        //side: BorderSide(color: Colors.red)
                                    ),
                                    color: color1,
                                    onPressed: (){
                                      if (_formkey.currentState.validate() == true) {
                                        _submit();
                                      }
                                }),
                                FlatButton(onPressed:(){
                                  _toggleFormType;
                                }, child: Text(secondaryText),)
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  ),

                ),
              ),
            )
          ],

        ),

    );
  }
}

void _submit() {
}
