import 'dart:io';

import 'package:code_field/code_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:ipublish/controllers/user_controller.dart';
import 'package:ipublish/helpers/constants.dart';
import 'package:ipublish/widgets/onboard.dart';
import 'package:ipublish/widgets/textformfield_widget.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OnBoardingScreen extends StatefulWidget {
  static const routeName = '/Onboarding';

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends StateMVC<OnBoardingScreen> {
  UserController _con;

  _OnBoardingScreenState() : super(UserController()) {
    _con = controller;
  }
  int _numPages = 5;
  // PageController _pageController = PageController(initialPage: 0);

  String name = 'Andy Robertson';
  bool isDisabled = true;

  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  InputCodeControl codeControl = InputCodeControl(inputRegex: '^[0-9]*\$');
  int _currentPage = 0;
  bool checkBoxValue = false;

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.black26),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage
          ? indicator(true, Colors.black)
          : indicator(false, Colors.black));
    }
    return list;
  }

  initState() {
    super.initState();
    if (Platform.isAndroid) {
      disableCapture();
    } else {}
  }

  Future<void> disableCapture() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _con.scaffoldKey,
      body: SafeArea(
        top: true,
        bottom: false,
        child: SingleChildScrollView(
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
              children: <Widget>[
                // Expanded(
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .74,
                      child: PageView(
                        physics: ClampingScrollPhysics(),
                        controller: _con.pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle(
                                          fontFamily: 'Paltn', fontSize: 23),
                                      children: <TextSpan>[
                                        new TextSpan(
                                            text: 'Browse the',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Paltn',
                                                fontSize: 23)),
                                        new TextSpan(
                                            text: ' latest \n releases',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Paltn',
                                                fontSize: 23,
                                                fontWeight: FontWeight.w700)),
                                        new TextSpan(
                                            text: ' easily',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Paltn',
                                                fontSize: 23)),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Image.asset(
                                  'assets/images/png/onboard1.png',
                                ),
                                SizedBox(height: 20),
                                Center(
                                  child: Text('Let\'s set you up quickly...',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 20)),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'What\'s your name?',
                                  style: TextStyle(fontFamily: 'Helvetica'),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(height: 20),
                                TextFormFieldWidget(
                                    hintText: name,
                                    fillColor: Colors.white30,
                                    initialValue: _con.user.name,
                                    onChanged: (String input) {
                                      _con.user.name = input;
                                      if (input.trim().length == 0) {
                                        setState(() {
                                          isDisabled = true;
                                        });
                                      } else {
                                        setState(() {
                                          isDisabled = true;
                                        });
                                      }
                                      if (input.trim().length >= 3) {
                                        setState(() {
                                          isDisabled = false;
                                        });
                                      } else {
                                        setState(() {
                                          isDisabled = true;
                                        });
                                      }
                                    })
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    'Buy books from top authors',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Paltn', fontSize: 23),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Image.asset(
                                  'assets/images/png/onboard2.png',
                                ),
                                SizedBox(height: 20),
                                Center(
                                  child: Text('Only few more steps to go...',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 20)),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'What\'s your email?',
                                  style: TextStyle(fontFamily: 'Helvetica'),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(height: 10),
                                TextFormFieldWidget(
                                    hintText: 'andy.robertson@gmail.com',
                                    fillColor: Colors.white30,
                                    initialValue: _con.user.email,
                                    onChanged: (String input) {
                                      _con.user.email = input;
                                      if (input.trim().length == 0) {
                                        setState(() {
                                          isDisabled = false;
                                        });
                                      }
                                      if (input.trim().contains('@')) {
                                        setState(() {
                                          isDisabled = false;
                                        });
                                      } else {
                                        setState(() {
                                          isDisabled = true;
                                        });
                                      }
                                      print(input);
                                    }),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle(
                                          fontFamily: 'Paltn', fontSize: 23),
                                      children: <TextSpan>[
                                        new TextSpan(
                                            text: 'Read your',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Paltn',
                                                fontSize: 23)),
                                        new TextSpan(
                                            text: ' favourite books \n',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Paltn',
                                                fontSize: 23,
                                                fontWeight: FontWeight.w700)),
                                        new TextSpan(
                                            text: ' anywhere, anytime',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Paltn',
                                                fontSize: 23)),
                                      ],
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Image.asset(
                                    'assets/images/png/onboard3.png',
                                  ),
                                ),
                                SizedBox(height: 10),
                                Center(
                                  child: Text('Almost there...',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 20)),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Set your password',
                                  style: TextStyle(fontFamily: 'Helvetica'),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(height: 5),
                                TextFormFieldWidget(
                                  obscureText: _con.hidePassword,
                                  onIconTap: _con.togglePasswordVisibility,
                                  hintText: '**********',
                                  type: TextInputType.visiblePassword,
                                  iconData: _con.hidePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  fillColor: Colors.white30,
                                  initialValue: _con.user.password,
                                  onChanged: (String input) =>
                                      _con.user.password = input,
                                  onSaved: (String input) =>
                                      _con.user.password = input,
                                  // validator: (String input) {
                                  //   if (input.trim().length == 0)
                                  //     return 'Please, set a password';
                                  //   if (input.trim().length < 8)
                                  //     return 'Password should be at least 8 characters';
                                  // },
                                ),
                                Row(
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
                                    Text('I agree to all terms and condiions'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/png/verify_otp.png',
                                  ),
                                ),
                                SizedBox(height: 20),
                                Center(
                                  child: Text('Verify OTP',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 20)),
                                ),
                                SizedBox(height: 10),
                                Text(
                                    'Enter the 4-digit code sent to your email or phone',
                                    style: TextStyle()),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: PinPut(
                                    fieldsCount: 4,
                                    eachFieldWidth: 0.1,
                                    onSubmit: (String pin) =>
                                        _con.verify.token = pin,
                                    focusNode: _pinPutFocusNode,
                                    controller: _pinPutController,
                                    submittedFieldDecoration:
                                        _pinPutDecoration.copyWith(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    selectedFieldDecoration: _pinPutDecoration,
                                    followingFieldDecoration:
                                        _pinPutDecoration.copyWith(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    kTruckLoadingImage,
                                    height: 150,
                                  ),
                                ),
                                SizedBox(height: 30),
                                Center(
                                  child: Text('You\'re all set!',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 20)),
                                ),
                                SizedBox(height: 10),
                                Center(
                                  child: Text(
                                      'You have successfully signed up! Start purchasing your favorite books',
                                      textAlign: TextAlign.center,
                                      style: TextStyle()),
                                ),
                                _currentPage == _numPages - 1
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          getLoginButton(
                                              'Continue Shopping', context),
                                        ],
                                      )
                                    : Container(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // ),
                Visibility(
                  visible: _currentPage == _numPages - 1 ? false : true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                ),
                _currentPage == _numPages - 3
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getPlainButton(_con.pageController, 'Back'),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: RaisedButton(
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10)),
                              color: Colors.black,
                              onPressed: () {
                                _con.register();
                                // _con.toNextPage();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  'Nextas',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : _currentPage == _numPages - 1
                        ? Container()
                        : _currentPage == _numPages - 2
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  getPlainButton(_con.pageController, 'Back'),
                                  Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: RaisedButton(
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10)),
                                      color: Colors.black,
                                      onPressed: () {
                                        // _con.verify.email = _con.user.email;
                                        _con.verifyToken();
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Text(
                                          'Nextor',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : _currentPage == _numPages - 3
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      getPlainButton(
                                          _con.pageController, 'Back'),
                                      getButton(_con.pageController, 'Nextest'),
                                    ],
                                  )
                                : _currentPage == _numPages - 4
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          getPlainButton(
                                              _con.pageController, 'Back'),
                                          (isDisabled)
                                              ? getDisabledButton('Next')
                                              : getButton(
                                                  _con.pageController, 'Next')
                                        ],
                                      )
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(),
                                          (isDisabled)
                                              ? getDisabledButton('Next')
                                              : getButton(
                                                  _con.pageController, 'Next')
                                        ],
                                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
