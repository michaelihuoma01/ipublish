import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ipublish/widgets/appbar_widget.dart';

class NotificationsPage extends StatefulWidget {
  static const routeName = '/Notifications';

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(autoLeading: true, actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset("assets/images/svg/menu_icon.svg"),
        ),
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notifications',
                      style: TextStyle(fontFamily: 'Paltn', fontSize: 20)),
                  Text('Clear All',
                      style: TextStyle(
                          fontFamily: 'Helvetica',
                          color: Colors.grey,
                          fontSize: 11)),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Text('Today',
                    style: TextStyle(fontFamily: 'Helvetica', fontSize: 15)),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.all(Radius.circular((10))),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Your order has been shipped',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 12,
                              color: Colors.black))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.all(Radius.circular((10))),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Your order has been shipped',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 12,
                              color: Colors.black))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
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
                      Text('Your booking was successful',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 12,
                              color: Colors.black))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
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
                      Text('Your order receipt has been sent',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 12,
                              color: Colors.black))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
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
                      Text('PDF successfully downloaded',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 12,
                              color: Colors.black))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text('Yesterday',
                    style: TextStyle(fontFamily: 'Helvetica', fontSize: 15)),
              ),
              SizedBox(height: 15),
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
                      Text('Please check your email to verify your account',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 12,
                              color: Colors.black))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
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
                      Text('Welcome to El Napty!',
                          style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 12,
                              color: Colors.black))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
