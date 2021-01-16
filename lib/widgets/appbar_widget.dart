import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  final String title, subtitle;
  final Function onIconTap;
  final bool autoLeading, white, padded;
  final List<Widget> actions;

  const AppBarWidget({
    Key key,
    this.title,
    this.subtitle,
    this.autoLeading = true,
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
      color: Color(0xff0440A7),
      padding: EdgeInsets.only(top: padded ? 25 : 0),
      child: AppBar(
        elevation: 0,
        backgroundColor:
            white ? Colors.white : Color(0xff0440A7), //Colors.blue, //
        centerTitle: false,
        automaticallyImplyLeading: autoLeading,
        leading: Offstage(
          offstage: !autoLeading,
          child: InkWell(
            onTap:
                onIconTap ?? () => Navigator.of(context).maybePop(), //.pop(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Icon(
                FontAwesomeIcons.arrowLeft,
                size: 17,
                color: white ? Colors.black : Colors.white,
                // color: kBlack,
              ),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(title ?? '',
                  style: TextStyle(
                    color: white ? Colors.black : Colors.white,
                    fontFamily: 'Helvetica',
                    fontSize: 13,
                  )),
            ),
          ],
        ),

        actions: actions,
      ),
    );
  }
}
