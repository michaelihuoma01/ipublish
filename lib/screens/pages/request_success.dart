import 'package:flutter/material.dart';
import 'package:ipublish/helpers/constants.dart';
import 'package:ipublish/screens/tabs/add_to_cart.dart';
import 'package:ipublish/widgets/button.dart';

class RequestSuccess extends StatefulWidget {
  @override
  _RequestSuccessState createState() => _RequestSuccessState();
}

class _RequestSuccessState extends State<RequestSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            child: Image.asset(
                              'assets/images/png/request_success.png',
                              height: 150,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: Text('Your request has been sent!',
                              style: TextStyle(
                                  fontFamily: 'Helvetica', fontSize: 20)),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                              'You will receive a response from the publisher soon',
                              textAlign: TextAlign.center,
                              style: TextStyle()),
                        ),
                        SizedBox(height: 10),
                        Center(
                            child: ButtonWidget(
                          title: 'View More Services',
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
    );
  }
}
