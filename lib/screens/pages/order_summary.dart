import 'package:flutter/material.dart';
import 'package:ipublish/screens/pages/success.dart';
import 'package:ipublish/widgets/appbar_widget.dart';
import 'package:ipublish/widgets/button.dart';
import 'package:ipublish/widgets/counter_button.dart';

class OrderSummary extends StatefulWidget {
  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  TextEditingController numController = new TextEditingController();
  var focusKeyboard = FocusNode();

  bool keyboardVisible = true;

  void setFocus() {
    if (!keyboardVisible) {
      FocusScope.of(context).unfocus();
    } else {
      FocusScope.of(context).requestFocus(focusKeyboard);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numController.text = '1';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(autoLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order Summary',
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping Address',
                              style: TextStyle(fontFamily: 'Helvetica')),
                          Icon(Icons.edit_outlined)
                        ],
                      ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Your Order',
                              style: TextStyle(fontFamily: 'Helvetica')),
                          Icon(Icons.edit_outlined)
                        ],
                      ),
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
                                Row(
                                  children: [
                                    Text('AED 120',
                                        style: TextStyle(
                                            fontFamily: 'Helvetica',
                                            fontSize: 18)),
                                    SizedBox(width: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CounterButton(
                                            iconData: Icons.remove,
                                            onTap: () {}),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              border: UnderlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                            focusNode: focusKeyboard,
                                            controller: numController,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Helvetica'),
                                            keyboardType: TextInputType.number,
                                            onFieldSubmitted: (value) {},
                                          ),
                                        ),
                                        CounterButton(
                                          iconData: Icons.add,
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
                              'assets/images/png/fault_in_our_stars.png',
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
                                Row(
                                  children: [
                                    Text('AED 120',
                                        style: TextStyle(
                                            fontFamily: 'Helvetica',
                                            fontSize: 18)),
                                    SizedBox(width: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CounterButton(
                                            iconData: Icons.remove,
                                            onTap: () {}),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              border: UnderlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                            focusNode: focusKeyboard,
                                            controller: numController,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Helvetica'),
                                            keyboardType: TextInputType.number,
                                            onFieldSubmitted: (value) {},
                                          ),
                                        ),
                                        CounterButton(
                                          iconData: Icons.add,
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
                                  color: Colors.grey)),
                          Text('AED 240',
                              style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 13,
                                  color: Colors.grey)),
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
                                  color: Colors.grey)),
                          Text(' - AED 29',
                              style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 13,
                                  color: Colors.grey)),
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
                                  color: Colors.grey)),
                          Text('AED 50',
                              style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 12,
                                  color: Colors.grey)),
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
                          Text('Payment Method',
                              style: TextStyle(fontFamily: 'Helvetica')),
                          Icon(Icons.edit_outlined)
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('Pay With Card',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                              fontSize: 14)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                  child: ButtonWidget(
                title: 'Place Order',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SuccessPage()));
                },
                background: true,
              )),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
