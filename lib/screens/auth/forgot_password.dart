import 'package:flutter/material.dart';
import 'package:ipublish/helpers/constants.dart';
import 'package:ipublish/screens/auth/update_password.dart';
import 'package:ipublish/screens/auth/verify_otp.dart';
import 'package:ipublish/widgets/button.dart';
import 'package:ipublish/widgets/textformfield_widget.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        padding: const EdgeInsets.only(top: 70),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(fontFamily: 'Paltn', fontSize: 23),
                            children: <TextSpan>[
                              new TextSpan(
                                  text: 'Forgot ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Paltn',
                                      fontSize: 23,
                                      fontWeight: FontWeight.w700)),
                              new TextSpan(
                                  text: 'Password?',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Paltn',
                                      fontSize: 23)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Image.asset(
                        'assets/images/png/forgot_password.png', 
                        height: 190,
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Text('Don\'t worry, we got you!',
                          style:
                              TextStyle(fontFamily: 'Helvetica', fontSize: 20)),
                    ),
                    SizedBox(height: 30),
                    Text('Enter the registered email / phone',
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                        )),
                    SizedBox(height: 10),
                    TextFormFieldWidget(
                      hintText: 'andy.robertson@gmail.com',
                      fillColor: Colors.white30,
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonWidget(
                            title: 'Update Password',
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UpdatePassword()))),
                        ButtonWidget(
                            title: 'Next',
                            background: true,

                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerifyOTP()))),
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
