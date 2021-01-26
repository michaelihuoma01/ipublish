import 'package:flutter/material.dart';
import 'package:ipublish/screens/auth/login.dart';

Widget getButton(_pageController, String title) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: FlatButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10)),
      color: Colors.black,
      onPressed: () {
        _pageController.nextPage(
            duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
    ),
  );
}

Widget getDisabledButton(String title) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: FlatButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10)),
      color: Colors.black12,
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          title,
          style: TextStyle(color: Colors.white60, fontSize: 15.0),
        ),
      ),
    ),
  );
}

Widget getLoginButton(String title, context) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10)),
      color: Colors.black,
      onPressed: () {
         Navigator.of(context).pushReplacementNamed(
        LoginScreen.routeName,
        arguments: 0,
      );
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
    ),
  );
}

Widget getPlainButton(_pageController, String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: FlatButton(
      onPressed: () {
        _pageController.previousPage(
            duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      },
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 15.0),
      ),
    ),
  );
}

BoxDecoration getDecoration() {
  return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.9],
          colors: [Color(0xFF4d4d4d), Color(0xFFeeeceb), Color(0xFF4d4d4d)]));
}

Widget indicatorText(bool isActive, Color color) {
  return Row(
    children: [
      AnimatedContainer(
        duration: Duration(microseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        // height: 9.0,
        // width:  9.0,
        decoration: BoxDecoration(
            color: isActive ? color : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular((25))),
            border: isActive
                ? Border.all(width: 0.0, color: Colors.transparent)
                : Border.all(width: 1.0, color: Colors.black)),
        child: Text('Description'),
      ),
      AnimatedContainer(
        duration: Duration(microseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        // height: 9.0,
        // width:  9.0,
        decoration: BoxDecoration(
            color: isActive ? color : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular((25))),
            border: isActive
                ? Border.all(width: 0.0, color: Colors.transparent)
                : Border.all(width: 1.0, color: Colors.black)),
        child: Text('Reviews'),
      ),
    ],
  );
}

Widget indicator(bool isActive, Color color) {
  return AnimatedContainer(
    duration: Duration(microseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8.0),
    height: 9.0,
    width: 9.0,
    decoration: BoxDecoration(
        color: isActive ? color : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular((25))),
        border: isActive
            ? Border.all(width: 0.0, color: Colors.transparent)
            : Border.all(width: 1.0, color: Colors.black)),
    // decoration: BoxDecoration(
    //   color: isActive ? Colors.white : Colors.black,
    //   borderRadius: BorderRadius.all(Radius.circular(50)),

    // ),
  );
}
