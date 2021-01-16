import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenreTile extends StatelessWidget {
  final bool isActive, search;
  final String label;
  final Color bgColor;

  GenreTile({this.isActive, this.bgColor, this.label, this.search});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            color: isActive ? bgColor : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular((20))),
            border: isActive
                ? Border.all(width: 0.0, color: Colors.transparent)
                : Border.all(width: 1.0, color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.only(top: 7, bottom: 7, left: 20, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label,
                  style: (isActive)
                      ? TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 12,
                          color: search ? Colors.black : Colors.white)
                      : TextStyle(
                          fontFamily: 'Helvetica',
                          color: Colors.grey,
                          fontSize: 12)),
              search
                  ? Icon(Icons.close, size: 12)
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
