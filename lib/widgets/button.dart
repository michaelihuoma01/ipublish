import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Function onPressed;
  final bool background;

  ButtonWidget({this.title, this.onPressed, this.background});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: FlatButton(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(8)),
        color: (background == true) ? Colors.black : Colors.transparent,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
      ),
    );
  }
}
