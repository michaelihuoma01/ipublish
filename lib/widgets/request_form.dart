import 'package:flutter/material.dart';
import 'package:ipublish/screens/pages/request_success.dart';
import 'package:ipublish/widgets/textformfield_widget.dart';

class RequestForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.transparent,
        child: Container(
          margin: EdgeInsets.all(16.0),
          width: double.infinity,
          height: 450,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10),
                Icon(Icons.cancel_outlined, size: 17),
                SizedBox(height: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Center(
                    child: Text('REQUEST FORM',
                        style:
                            TextStyle(fontSize: 17, fontFamily: 'Helvetica')),
                  ),
                  SizedBox(height: 10),
                  Text(
                      'Please fill out this form & we will get back to you shortly',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Helvetica',
                          fontSize: 12)),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Text(
                          'Phone Number',
                          style: TextStyle(fontFamily: 'Helvetica'),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                            fontFamily: 'Helvetica', color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  TextFormFieldWidget(),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: Text(
                          'Message',
                          style: TextStyle(fontFamily: 'Helvetica'),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                            fontFamily: 'Helvetica', color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                      height: 100,
                      child: TextFormFieldWidget(
                        maxLines: 5,
                      )),
                  SizedBox(height: 10),
                  Center(
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8)),
                      color: Color(0xff0440A7),
                      onPressed: () {
                         Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RequestSuccess()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Submit Request',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
}
