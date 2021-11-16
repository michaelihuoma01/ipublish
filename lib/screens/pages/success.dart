import 'package:flutter/material.dart';
import 'package:ipublish/widgets/button.dart';

class SuccessPage extends StatefulWidget {
  static const routeName = '/Success';

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
                          padding: const EdgeInsets.only(top: 50),
                          child: Center(
                            child:    Image.asset(
                              'assets/images/png/success.png',
                              height: 150,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: Text('Thank you for shopping',
                              style: TextStyle(
                                  fontFamily: 'Helvetica', fontSize: 20)),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                              'Your order has been placed, you will receive information about the shipping shortly',
                              textAlign: TextAlign.center,
                              style: TextStyle()),
                        ),
                        SizedBox(height: 10),
                        Center(
                            child: ButtonWidget(
                          title: 'View Orders',
                          onPressed: () {},
                          background: true,
                        )),
                        SizedBox(height: 10),
                        Center(child: Text('Browse More Books', style: TextStyle(fontFamily: 'Helvetica'),))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
