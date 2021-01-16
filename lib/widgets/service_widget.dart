import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  final Image image;
  final String service;
  // final bool selected;

  const ServicesWidget({
    Key key,
    this.image,
    // this.selected = false,
    this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: width * .035, vertical: width * .025),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            spreadRadius: 3.0,
            color: Colors.grey[300],
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border.all(
                  color: Colors.transparent,
                  width: 2,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: image,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.black,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 20,
            ),
            child: Text(
              service, // label,
              style: TextStyle(color: Colors.white, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
