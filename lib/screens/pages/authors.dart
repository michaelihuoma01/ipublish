import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ipublish/screens/pages/author_books.dart';
import 'package:ipublish/widgets/appbar_widget.dart';
import 'package:ipublish/widgets/authors_tile.dart';

class AuthorsPage extends StatefulWidget {
  static const routeName = '/Authors';

  @override
  _AuthorsPageState createState() => _AuthorsPageState();
}

class _AuthorsPageState extends State<AuthorsPage> {
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
            child: Text('Authors & Artists',
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
                                    isAuthors: true,
                                  )));
                    },
                    child: AuthorsTile(
                        name: 'Author name',
                        image: Image.asset(
                          'assets/images/png/author1.png',
                        )),
                  ),
                  AuthorsTile(
                      name: 'Author name',
                      image: Image.asset(
                        'assets/images/png/author2.png',
                      )),
                  AuthorsTile(
                      name: 'Author name',
                      image: Image.asset(
                        'assets/images/png/author3.png',
                      )),
                  AuthorsTile(
                      name: 'Author name',
                      image: Image.asset(
                        'assets/images/png/author4.png',
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
