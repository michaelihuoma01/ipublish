import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String label;
  final Icon prefixIcon, suffixIcon;
  final bool isAccount;

  SettingsTile({this.label, this.prefixIcon, this.suffixIcon, this.isAccount});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isAccount ? Colors.blue[100] : Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular((10))),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                prefixIcon,
                SizedBox(width: 20),
                Text(label,
                    style: TextStyle(
                        fontFamily: 'Helvetica',
                        fontSize: 12,
                        color: Colors.black)),
              ],
            ),
            suffixIcon,
          ],
        ),
      ),
    );
  }
}
