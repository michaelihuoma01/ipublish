import 'package:flutter/material.dart';
import 'package:ipublish/screens/pages/product_page.dart';
import 'package:ipublish/widgets/books_home.dart'; 

class MyProfileBooks extends StatelessWidget {
  const MyProfileBooks({
    Key key,
  }) : super(key: key);

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
                Column(
                  children: [
                    BooksHome(
                      title: 'Paris For One',
                      author: 'Jojo Moyes',
                      url: 'assets/images/png/paris_for_one.png',
                    ),
                    FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8)),
                  color: Colors.black,
                  onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductPage())),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      'Continue Reading',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ),
                )
                  ],
                ),
                Column(
                  children: [
                    BooksHome(
                      title: 'Paris For One',
                      author: 'Jojo Moyes',
                      url: 'assets/images/png/fault_in_our_stars.png', 
                    ),
                     FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8)),
                  color: Colors.black,
                  onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductPage())),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Text(
                      'Continue Reading',
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ),
                )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
