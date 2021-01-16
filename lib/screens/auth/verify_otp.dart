import 'package:code_field/code_field.dart';
import 'package:flutter/material.dart';
import 'package:ipublish/helpers/constants.dart';
import 'package:ipublish/screens/auth/login.dart';
import 'package:ipublish/widgets/button.dart';
import 'package:ipublish/widgets/textformfield_widget.dart';

class VerifyOTP extends StatefulWidget {
  @override
  _VerifyOTPState createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  InputCodeControl codeControl = InputCodeControl(inputRegex: '^[0-9]*\$');

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
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 100),
                            child: Center(
                              child: Image.asset(
                                'assets/images/png/verify_otp.png',
                                height: 190,
                              ),
                            ),
                          ), 
                          Center(
                            child: Text('Verify OTP',
                                style: TextStyle(
                                    fontFamily: 'Helvetica', fontSize: 20)),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                                'Enter the 4-digit code sent to your email or phone',
                                style: TextStyle()),
                          ),
                          SizedBox(height:10),
                          InputCodeField(
                      control: codeControl,
                      count: 4,
                      inputType: TextInputType.number,
                      decoration: InputCodeDecoration(
                        focusColor: Theme.of(context).accentColor,
                        color: Colors.white,
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Brand-Bold'),
                      ),
                    ),
                          SizedBox(height: 40),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       ButtonWidget(title: 'Back', onPressed: ()=> Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()))),

                                    ButtonWidget(title: 'Verify', onPressed: ()=> Navigator.pop(context), background: true),
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