import 'package:code_field/code_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ipublish/helpers/constants.dart';
import 'package:ipublish/widgets/onboard.dart';
import 'package:ipublish/widgets/textformfield_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPages = 5;
  final PageController _pageController = PageController(initialPage: 0);

  InputCodeControl codeControl = InputCodeControl(inputRegex: '^[0-9]*\$');
  int _currentPage = 0;
  bool checkBoxValue = false;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage
          ? indicator(true, Colors.black)
          : indicator(false, Colors.black));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0440A7),
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
            children: <Widget>[
              Expanded(
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 80),
                      child: Center(
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
                            Center(
                              child: Image.asset(
                                'assets/images/png/onboard1.png',
                                // height: 150,
                              ),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: Text('Let\'s set you up quickly...',
                                  style: TextStyle(
                                      fontFamily: 'Helvetica', fontSize: 20)),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'What\'s your name?',
                              style: TextStyle(fontFamily: 'Helvetica'),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: 20),
                            TextFormFieldWidget(
                              hintText: 'Andy Robertson',
                              fillColor: Colors.white30,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 80),
                                child: Text(
                                  'Buy books from top authors',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Paltn', fontSize: 23),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: Image.asset(
                                'assets/images/png/onboard2.png',
                                // height: 150,
                              ),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: Text('Only few more steps to go...',
                                  style: TextStyle(
                                      fontFamily: 'Helvetica', fontSize: 20)),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 50),
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
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Image.asset(
                              'assets/images/png/onboard3.png',
                              // height: 150,
                            ),
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: Text('Almost there...',
                                style: TextStyle(
                                    fontFamily: 'Helvetica', fontSize: 20)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Set your password',
                            style: TextStyle(fontFamily: 'Helvetica'),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 10),
                          TextFormFieldWidget(
                            hintText: '*******************',
                            fillColor: Colors.white30,
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 60),
                            child: Center(
                              child: Image.asset(
                                'assets/images/png/verify_otp.png',
                                // height: 150,
                              ),
                            ),
                          ),
                          SizedBox(height: 0),
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
                          SizedBox(height: 0),
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Center(
                              child: Image.asset(
                                kTruckLoadingImage,
                                height: 150,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Center(
                            child: Text('You\'re all set!',
                                style: TextStyle(
                                    fontFamily: 'Helvetica', fontSize: 20)),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
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
              Visibility(
                visible: _currentPage == _numPages - 1 ? false : true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
              _currentPage == _numPages - 1
                  ? Container()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getPlainButton(_pageController, 'Back'),
                        getButton(_pageController, 'Next'),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
