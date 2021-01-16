import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipublish/screens/pages/order_details.dart';
import 'package:ipublish/widgets/appbar_widget.dart';

class MyOrdersPage extends StatefulWidget {
  @override
  _MyOrdersPageState createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(autoLeading: true),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Orders',
                style: TextStyle(fontFamily: 'Paltn', fontSize: 20)),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular((12))),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 3.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.2, 0.2)),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order Number: AJ3648593',
                            style: TextStyle(fontFamily: 'Helvetica')),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderDetails()));
                          },
                          child: Row(
                            children: [
                              Text('View Details',
                                  style: TextStyle(
                                      fontFamily: 'Helvetica',
                                      fontSize: 10,
                                      color: Colors.grey)),
                              SizedBox(width: 3),
                              Icon(FontAwesomeIcons.arrowRight,
                                  size: 12, color: Colors.grey)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Text('Order was placed on Nov 12, 2020',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 12)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/png/paris_for_one.png',
                                height: 100,
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Text('Paris For One',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 13)),
                                  Text('Jojo Moyes',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          color: Colors.grey,
                                          fontSize: 10)),
                                  SizedBox(height: 10),
                                  Text('AED 120',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 13)),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text('Status: Shipped',
                            style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 13,
                                color: Colors.orangeAccent)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order Number: AJ3648593',
                            style: TextStyle(fontFamily: 'Helvetica')),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderDetails()));
                          },
                          child: Row(
                            children: [
                              Text('View Details',
                                  style: TextStyle(
                                      fontFamily: 'Helvetica',
                                      fontSize: 10,
                                      color: Colors.grey)),
                              SizedBox(width: 3),
                              Icon(FontAwesomeIcons.arrowRight,
                                  size: 12, color: Colors.grey)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Text('Order was placed on Nov 12, 2020',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 12)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/png/paris_for_one.png',
                                height: 100,
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Text('Paris For One',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 13)),
                                  Text('Jojo Moyes',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          color: Colors.grey,
                                          fontSize: 10)),
                                  SizedBox(height: 10),
                                  Text('AED 120',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 13)),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text('Status: Delivered',
                            style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 13,
                                color: Colors.green)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order Number: AJ3648593',
                            style: TextStyle(fontFamily: 'Helvetica')),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderDetails()));
                          },
                          child: Row(
                            children: [
                              Text('View Details',
                                  style: TextStyle(
                                      fontFamily: 'Helvetica',
                                      fontSize: 10,
                                      color: Colors.grey)),
                              SizedBox(width: 3),
                              Icon(FontAwesomeIcons.arrowRight,
                                  size: 12, color: Colors.grey)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Text('Order was placed on Nov 12, 2020',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 12)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/png/paris_for_one.png',
                                height: 100,
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Text('Paris For One',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 13)),
                                  Text('Jojo Moyes',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          color: Colors.grey,
                                          fontSize: 10)),
                                  SizedBox(height: 10),
                                  Text('AED 120',
                                      style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontSize: 13)),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text('Status: Cancelled',
                            style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 13,
                                color: Colors.red)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
