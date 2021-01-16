import 'package:flutter/material.dart';

class AuthorsTile extends StatelessWidget {
  final String name;
  final Image image;

  AuthorsTile({this.name, this.image});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var side = width * .381;

    return Column(
      children: [
        Container(
          height: side,
          width: side,
          margin: EdgeInsets.symmetric(
              horizontal: width * .035, vertical: width * .025),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular((8))),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 5.0,
                  spreadRadius: 3.0,
                  offset: Offset(0.2, 0.2)),
            ],
          ),
          child: image,
        ),
        Text(name, style: TextStyle(fontFamily: 'Helvetica', fontSize: 14)),
      ],
    );
  }
}
