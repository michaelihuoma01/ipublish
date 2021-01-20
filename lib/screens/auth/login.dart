import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipublish/controllers/user_controller.dart';
import 'package:ipublish/helpers/constants.dart';
import 'package:ipublish/screens/auth/forgot_password.dart';
import 'package:ipublish/screens/auth/update_password.dart';
import 'package:ipublish/screens/mainPage.dart';
import 'package:ipublish/widgets/button.dart';
import 'package:ipublish/widgets/textformfield_widget.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends StateMVC<LoginScreen> {
  UserController _con = new UserController();
  bool checkBoxValue = false;

  _LoginScreenState() : super(UserController()) {
    _con = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      key: _con.scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.1, 0.5, 10],
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                // Color(0xff0440A7),
                Color(0xff0440A7)
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(fontFamily: 'Paltn', fontSize: 23),
                            children: <TextSpan>[
                              new TextSpan(
                                  text: ' Sign In ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Paltn',
                                      fontSize: 23,
                                      fontWeight: FontWeight.w700)),
                              new TextSpan(
                                  text: 'to your account',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Paltn',
                                      fontSize: 23)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/png/sign_in.png',
                        height: 190,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Text(
                        'Email',
                        style: TextStyle(fontFamily: 'Helvetica'),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormFieldWidget(
                      hintText: 'andy.robertson@gmail.com',
                      fillColor: Colors.white30,
                      initialValue: _con.user.email,
                      onChanged: (String input) => _con.user.email = input,
                      validator: (String input) {
                        if (input.trim().length == 0)
                          return 'Please, enter your email address';

                        if (!input.trim().contains('@'))
                          return 'Invalid email address!';
                      },
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Text(
                        'Password',
                        style: TextStyle(fontFamily: 'Helvetica'),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormFieldWidget(
                      hintText: '***************',
                      fillColor: Colors.white30,
                      initialValue: _con.user.password,
                      onChanged: (String input) => _con.user.password = input,
                      validator: (String input) {
                        if (input.trim().length == 0)
                          return 'Please, set a password';
                        if (input.trim().length < 8)
                          return 'Password should be at least 8 characters';
                      },
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          activeColor: Colors.black,
                          value: checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              if (value) {
                                checkBoxValue = value;
                              } else {
                                checkBoxValue = false;
                              }
                            });
                          },
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UpdatePassword()));
                          },
                          child: Text(
                            'Remember me',
                            style: TextStyle(
                                fontFamily: 'Helvetica', fontSize: 13),
                          ),
                        ),
                        SizedBox(width: 50),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontFamily: 'Helvetica'),
                          ),
                        ),
                      ],
                    ),
                    Center(
                        child: ButtonWidget(
                      title: 'Sign In',
                      onPressed: () {
                        _con.login();
                      },
                      background: true,
                    )),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.google, size: 20),
                        SizedBox(width: 25),
                        Icon(FontAwesomeIcons.facebookF, size: 20),
                        SizedBox(width: 25),
                        Icon(FontAwesomeIcons.apple, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
