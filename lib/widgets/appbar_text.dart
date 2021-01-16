import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarText extends StatelessWidget implements PreferredSize {
  final String title, subtitle;
  final Function onIconTap;
  final bool white, padded;
  final List<Widget> actions;

  const AppBarText({
    Key key,
    this.title,
    this.subtitle,
    this.white = true,
    this.padded = false,
    this.onIconTap,
    this.actions,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(padded ? 85 : 56);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white
          ? Theme.of(context).scaffoldBackgroundColor
          : Theme.of(context).accentColor,
      padding: EdgeInsets.only(top: padded ? 25 : 0),
      child: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: white
            ? Colors.white
            : Theme.of(context).accentColor, //Colors.blue, //
        centerTitle: false,

        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title ?? '',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Helvetica',
                    fontSize: 13,
                  )),
              Text(subtitle ?? '',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Paltn',
                    fontSize: 23,
                  )),
            ],
          ),
        ),

        actions: actions,
      ),
    );
  }
}
