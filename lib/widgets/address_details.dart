import 'package:flutter/material.dart';
import 'package:ipublish/screens/pages/delivery.dart';
import 'package:ipublish/widgets/textformfield_widget.dart';

class AddressDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool genreActive = true;

    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.transparent,
        child: Container(
          margin: EdgeInsets.all(16.0),
          width: double.infinity,
          height: 470,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Enter Address Details',
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'Helvetica')),
                    Icon(Icons.cancel, size: 20),
                  ],
                ),
                SizedBox(height: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Your Location',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Helvetica',
                          fontSize: 12)),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Business Bay, Dubai',
                          style: TextStyle(
                            fontFamily: 'Helvetica',
                            color: Color(0xff0440A7),
                          )),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DeliveryPage()));
                        },
                        child: Text('Change',
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 10,
                              color: Colors.grey,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'House No. / Flat No. *',
                    style: TextStyle(fontFamily: 'Helvetica'),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 5),
                  TextFormFieldWidget(
                    hintText: '204',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Building / Premise Name *',
                    style: TextStyle(fontFamily: 'Helvetica'),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 5),
                  TextFormFieldWidget(
                    hintText: 'Blue Bay Tower',
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Area / Street *',
                    style: TextStyle(fontFamily: 'Helvetica'),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 5),
                  TextFormFieldWidget(
                    hintText: 'Marasi Drive',
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Tag this location for later use',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular((15))),
                            border: Border.all(width: 1.0, color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Home',
                                  style: TextStyle(
                                      fontFamily: 'Helvetica',
                                      fontSize: 9,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Container(
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular((15))),
                            border: Border.all(width: 1.0, color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Work',
                                  style: TextStyle(
                                      fontFamily: 'Helvetica',
                                      fontSize: 9,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Container(
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular((15))),
                            border: Border.all(width: 1.0, color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Other',
                                  style: TextStyle(
                                      fontFamily: 'Helvetica',
                                      fontSize: 9,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8)),
                      color: Color(0xff0440A7),
                      onPressed: () {},
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
