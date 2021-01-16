import 'package:flutter/material.dart';
import 'package:ipublish/screens/tabs/add_to_cart.dart';
import 'package:ipublish/widgets/appbar_text.dart';
import 'package:ipublish/widgets/button.dart';

class CartTab extends StatefulWidget {
  @override
  _CartTabState createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarText(
        padded: true,
        title: 'Shopping',
        subtitle: 'Cart',
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Center(
                              child: Image.asset(
                                'assets/images/png/empty_cart.png',
                                height: 150,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Center(
                            child: Text('Your cart is empty!',
                                style: TextStyle(
                                    fontFamily: 'Helvetica', fontSize: 20)),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text('Please add a few items',
                                textAlign: TextAlign.center,
                                style: TextStyle()),
                          ),
                          SizedBox(height: 10),
                          Center(
                              child: ButtonWidget(
                            title: 'Browse Books',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddToCart()));
                            },
                            background: true,
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
