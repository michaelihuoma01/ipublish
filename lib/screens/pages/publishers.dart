import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ipublish/screens/pages/author_books.dart';
import 'package:ipublish/widgets/appbar_widget.dart';
import 'package:ipublish/widgets/authors_tile.dart';

class PublisherPage extends StatefulWidget {
  @override
  _PublisherPageState createState() => _PublisherPageState();
}

class _PublisherPageState extends State<PublisherPage> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text('Publishers',
                style: TextStyle(fontFamily: 'Paltn', fontSize: 23)),
          ),
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AuthorBooksPage(
                                    isAuthors: false,
                                  )));
                    },
                    child: AuthorsTile(
                        name: 'The Collins Press',
                        image: Image.asset(
                          'assets/images/png/pub1.png',
                        )),
                  ),
                  AuthorsTile(
                      name: 'Harper Collins',
                      image: Image.asset(
                        'assets/images/png/pub2.png',
                      )),
                  AuthorsTile(
                      name: 'Simon & Schuster',
                      image: Image.asset(
                        'assets/images/png/pub3.png',
                      )),
                  AuthorsTile(
                      name: 'Penguin Random House',
                      image: Image.asset(
                        'assets/images/png/pub4.png',
                      )),
                  AuthorsTile(
                      name: 'Openbook Publishers',
                      image: Image.asset(
                        'assets/images/png/pub5.png',
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
