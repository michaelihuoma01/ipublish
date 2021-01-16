import 'package:flutter/material.dart';
import 'package:ipublish/helpers/constants.dart';
import 'package:ipublish/widgets/button.dart';
import 'package:ipublish/widgets/textformfield_widget.dart';

class UpdatePassword extends StatefulWidget {
  @override
  _UpdatePasswordState createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
                        padding: const EdgeInsets.only(top: 80),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(fontFamily: 'Paltn', fontSize: 23),
                            children: <TextSpan>[
                              new TextSpan(
                                  text: 'Update ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Paltn',
                                      fontSize: 23,
                                      fontWeight: FontWeight.w700)),
                              new TextSpan(
                                  text: 'Password',
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
                        'assets/images/png/update_password.png', 
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Text(
                        'New Password',
                        style: TextStyle(fontFamily: 'Helvetica'),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormFieldWidget(
                        obscureText: true, hintText: '***************'),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(fontFamily: 'Helvetica'),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormFieldWidget(
                        obscureText: true, hintText: '***************'),
                    SizedBox(height: 20),
                    Center(
                        child: ButtonWidget(
                      title: 'Reset Password',
                      background: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )),
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
