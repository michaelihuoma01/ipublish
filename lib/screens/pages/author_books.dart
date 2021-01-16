import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ipublish/screens/tabs/add_to_cart.dart';
import 'package:ipublish/widgets/appbar_widget.dart';
import 'package:ipublish/widgets/books.dart';

class AuthorBooksPage extends StatefulWidget {
  final bool isAuthors;

  AuthorBooksPage({this.isAuthors});

  @override
  _AuthorBooksPageState createState() => _AuthorBooksPageState();
}

class _AuthorBooksPageState extends State<AuthorBooksPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double aspectRatio = size.aspectRatio;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(autoLeading: true, actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset("assets/images/svg/menu_icon.svg"),
        ),
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    (widget.isAuthors)
                        ? 'Author\'s Books'
                        : 'Publisher\'s Books',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Paltn',
                      fontSize: 23,
                    )),
                (widget.isAuthors)
                    ? Image.asset(
                        'assets/images/png/author1.png',
                        height: 40,
                      )
                    : Image.asset(
                        'assets/images/png/pub1.png',
                        height: 50,
                      ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: aspectRatio,
                children: [
                  Books(
                    author: 'Kim woo',
                    title: 'Crazy Rich Asians',
                    price: 'AED 49.99',
                    btnTitle: 'Add To Cart',
                    color: Color(0xff0440A7),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddToCart()));
                    },
                    url: 'assets/images/png/there_there.png',
                  ),
                  Books(
                    author: 'Kim woo',
                    title: 'Crazy Rich Asians',
                    price: 'AED 49.99',
                    btnTitle: 'Add To Cart',
                    color: Color(0xff0440A7),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddToCart()));
                    },
                    url: 'assets/images/png/the_handmaid.png',
                  ),
                  Books(
                    author: 'Kim woo',
                    title: 'Crazy Rich Asians',
                    price: 'AED 49.99',
                    btnTitle: 'Add To Cart',
                    color: Color(0xff0440A7),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddToCart()));
                    },
                    url: 'assets/images/png/crazy_rich_asians.png',
                  ),
                  Books(
                    author: 'Kim woo',
                    title: 'Crazy Rich Asians',
                    price: 'AED 49.99',
                    btnTitle: 'Add To Cart',
                    color: Color(0xff0440A7),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddToCart()));
                    },
                    url: 'assets/images/png/there_there.png',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
