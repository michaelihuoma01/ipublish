import 'package:flutter/material.dart';
import 'package:ipublish/widgets/request_form.dart';

class ServicesTile extends StatelessWidget {
  final String title, label;
  final Image image;

  ServicesTile({this.label, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular((8))),
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300],
              blurRadius: 3.0,
              spreadRadius: 2.0,
              offset: Offset(0.2, 0.2)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          children: [
            Container(
              height: 140,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular((8))),
              ),
              child: image,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(fontFamily: 'Helvetica', fontSize: 18)),
                  Text(label,
                      style: TextStyle(
                          fontFamily: 'Helvetica',
                          color: Colors.grey,
                          fontSize: 12)),
                  FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8)),
                    color: Color(0xff0440A7),
                    onPressed: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => RequestForm(),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Request',
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
