import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipublish/screens/pages/payment.dart';
import 'package:ipublish/widgets/appbar_widget.dart';

class OrderDetails extends StatefulWidget {
  static const routeName = '/OrderDetails';

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(autoLeading: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Order Details',
                  style: TextStyle(fontFamily: 'Paltn', fontSize: 20)),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular((12))),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset: Offset(0.2, 0.2)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shipping Address',
                          style: TextStyle(fontFamily: 'Helvetica')),
                      SizedBox(height: 15),
                      Text(
                          'Office 913, Blue Bay Tower, Business Bay, Dubai, United Arab Emirates',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                              fontSize: 14)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset: Offset(0.2, 0.2)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Order',
                          style: TextStyle(fontFamily: 'Helvetica')),
                      SizedBox(height: 5),
                      Text('Order Number: AJ364528393',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                              fontSize: 14)),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/png/paris_for_one.png',
                              height: 150,
                            ),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text('Paris For One',
                                    style: TextStyle(
                                        fontFamily: 'Helvetica', fontSize: 18)),
                                Text('Jojo Moyes',
                                    style: TextStyle(
                                        fontFamily: 'Helvetica',
                                        color: Colors.grey,
                                        fontSize: 12)),
                                SizedBox(height: 10),
                                Text('AED 120',
                                    style: TextStyle(
                                        fontFamily: 'Helvetica', fontSize: 18)),
                                SizedBox(height: 10),
                                Text('Qty : 1',
                                    style: TextStyle(
                                        fontFamily: 'Helvetica',
                                        fontSize: 14,
                                        color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/png/paris_for_one.png',
                              height: 150,
                            ),
                            SizedBox(width: 15),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Text('Paris For One',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 18)),
                                  Text('Jojo Moyes',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          color: Colors.grey,
                                          fontSize: 12)),
                                  SizedBox(height: 10),
                                  Text('AED 120',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 18)),
                                  SizedBox(height: 10),
                                  Text('Qty : 1',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 14,
                                          color: Colors.grey)),
                                ]),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sub Total',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Helvetica',
                                  color: Colors.black54)),
                          Text('AED 240',
                              style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 13,
                                  color: Colors.black54)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Promo',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Helvetica',
                                  color: Colors.black54)),
                          Text(' - AED 29',
                              style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 13,
                                  color: Colors.black54)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping Charges',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Helvetica',
                                  color: Colors.black54)),
                          Text('AED 50',
                              style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 12,
                                  color: Colors.black54)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Grand Total',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Helvetica',
                                  color: Colors.black)),
                          Text('AED 290',
                              style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 12,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular((12))),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset: Offset(0.2, 0.2)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payment Method',
                          style: TextStyle(fontFamily: 'Helvetica')),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.ccVisa),
                          Text('Pay With Card',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey,
                                  fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8)),
                  color: Colors.black,
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentPage())),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      'Place Order',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ]),
          ),
        ));
  }
}
