import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final IconData iconData;
  final Function onTap;

  const CounterButton({
    Key key,
    this.iconData,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container( 
        height: 25,
        width: 25,
        child: Icon(iconData, size: 16),
        decoration: BoxDecoration(
          color: Colors.black12, 
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
