import 'package:flutter/material.dart';
import 'package:ipublish/screens/pages/my_orders.dart';
import 'package:ipublish/screens/pages/product_page.dart';
import 'package:ipublish/widgets/books.dart';

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 370,
            // width: 0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Books(
                  title: 'Paris For One',
                  author: 'Jojo Moyes',
                  url: 'assets/images/png/paris_for_one.png',
                  color: Color(0xff0440A7),
                  btnTitle: 'View Orders',
                  price: 'AED 49.99',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyOrdersPage()));
                  },
                ),
                Books(
                  title: 'Paris For One',
                  author: 'Jojo Moyes',
                  url: 'assets/images/png/fault_in_our_stars.png',
                  color: Color(0xff0440A7),
                  btnTitle: 'View Orders',
                  price: 'AED 49.99',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyOrdersPage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
