import 'package:flutter/material.dart';
import 'package:ipublish/screens/pages/payment.dart';
import 'package:ipublish/widgets/add_to_cart_item.dart';
import 'package:ipublish/widgets/appbar_text.dart';
import 'package:ipublish/widgets/button.dart';

class AddToCart extends StatefulWidget {
  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                AddToCartItem(
                  title: 'Paris For One',
                  author: 'Jojo Moyes',
                  price: '49.99',
                  context: context,
                  focusKeyboard: focusKeyboard,
                  keyboardVisible: true,
                  numController: numController,
                ),
                SizedBox(height: 20),
                AddToCartItem(
                  title: 'Paris For One',
                  author: 'Jojo Moyes',
                  price: '49.99',
                  context: context,
                  focusKeyboard: focusKeyboard,
                  keyboardVisible: true,
                  numController: numController,
                ),
                SizedBox(height: 20),
                AddToCartItem(
                  title: 'Paris For One',
                  author: 'Jojo Moyes',
                  price: '49.99',
                  context: context,
                  focusKeyboard: focusKeyboard,
                  keyboardVisible: true,
                  numController: numController,
                ),
                SizedBox(height: 20),
                AddToCartItem(
                  title: 'Paris For One',
                  author: 'Jojo Moyes',
                  price: '49.99',
                  context: context,
                  focusKeyboard: focusKeyboard,
                  keyboardVisible: true,
                  numController: numController,
                ),
                SizedBox(height: 20),
                Center(
                    child: ButtonWidget(
                  title: 'Checkout',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage()));
                  },
                  background: true,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
