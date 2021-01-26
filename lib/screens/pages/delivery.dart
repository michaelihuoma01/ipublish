import 'package:flutter/material.dart';
import 'package:ipublish/widgets/address_details.dart';
import 'package:ipublish/widgets/appbar_text.dart';

class DeliveryPage extends StatefulWidget {
  static const routeName = '/Delivery';

  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarText(
          padded: true,
          title: 'Shipping',
          subtitle: 'Location',
          actions: [
            Row(
              children: [
                Icon(Icons.search, color: Colors.black),
                SizedBox(width: 8),
              ],
            ),
          ],
        ),
        body: InkWell(
          onTap: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) => AddressDetails(),
            );
          },
          child: Container(
            child: Center(
              child: Container(
                child: Text('Map View'),
              ),
            ),
          ),
        ));
  }
}
