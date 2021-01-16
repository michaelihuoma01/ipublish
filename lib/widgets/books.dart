import 'package:flutter/material.dart';
import 'package:ipublish/screens/mainPage.dart';
import 'package:ipublish/widgets/button.dart';

class Books extends StatelessWidget {
  final String title, author, price, btnTitle, url;
  final Function onPressed;
  final Color color;

  const Books({
    Key key,
    this.title,
    this.url,
    this.author,
    this.price,
    this.onPressed,
    this.btnTitle,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(url),
            Text(title,
                style: TextStyle(fontFamily: 'Helvetica', fontSize: 15)),
            Text(author,
                style: TextStyle(
                    fontFamily: 'Helvetica', color: Colors.grey, fontSize: 12)),
            Text(price,
                style: TextStyle(fontFamily: 'Helvetica', fontSize: 15)),
            FlatButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8)),
              color: color,
              onPressed: onPressed,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  btnTitle,
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
