import 'package:flutter/material.dart';
import 'package:ipublish/widgets/counter_button.dart';

class AddToCartItem extends StatelessWidget {
  final String title, author, price;
  final BuildContext context;
  final TextEditingController numController;
  final focusKeyboard;

  final bool keyboardVisible;

  AddToCartItem(
      {this.author,
      this.title,
      this.context,
      this.price,
      this.numController,
      this.focusKeyboard,
      this.keyboardVisible});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/png/paris_for_one.png', height: 200),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.cancel_outlined, size: 17),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(title,
                        style:
                            TextStyle(fontFamily: 'Helvetica', fontSize: 18)),
                    Text(author,
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            color: Colors.grey,
                            fontSize: 12)),
                    SizedBox(height: 30),
                    Text('AED $price',
                        style:
                            TextStyle(fontFamily: 'Helvetica', fontSize: 18)),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CounterButton(iconData: Icons.remove, onTap: () {}),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                            focusNode: focusKeyboard,
                            controller: numController,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'Helvetica'),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
