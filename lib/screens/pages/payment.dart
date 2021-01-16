import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipublish/helpers/constants.dart';
import 'package:ipublish/screens/pages/order_summary.dart';
import 'package:ipublish/widgets/address_details.dart';
import 'package:ipublish/widgets/appbar_widget.dart';
import 'package:ipublish/widgets/button.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(autoLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Payment',
                  style: TextStyle(fontFamily: 'Paltn', fontSize: 20)),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'assets/images/png/payment.png',
                ),
              ),
              SizedBox(height: 20),
              Text('Payment Methods',
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 15)),
              SizedBox(height: 5),
              Text('Please select your desired payment method',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
              SizedBox(height: 20),
              RaisedButton(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) => AddressDetails());
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.moneyBillWave,
                        size: 18, color: Color(0xff0440A7)),
                    const SizedBox(width: 25),
                    Text(
                      'Cash on Delivery',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.check_circle,
                      color: Color(0xff0440A7),
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.creditCard,
                        size: 18, color: Color(0xff0440A7)),
                    const SizedBox(width: 25),
                    Text(
                      'Pay With Card',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text('Apply Promo',
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 15)),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular((10))),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('BLACKFRIDAY20',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text('View Promo',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 12,
                              color: Colors.grey)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.all(Radius.circular((10))),
                  ),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                    child: ButtonWidget(
                  title: 'Continue to Checkout',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderSummary()));
                  },
                  background: true,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
