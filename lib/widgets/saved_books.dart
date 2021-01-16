import 'package:flutter/material.dart';
import 'package:ipublish/screens/pages/product_page.dart';
import 'package:ipublish/screens/pages/search_results.dart';
import 'package:ipublish/widgets/books_home.dart';

class SavedBooks extends StatelessWidget {
  const SavedBooks({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container( 
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchResults(title: 'Saved Books',)));
                  },
                  child: BooksHome(
                    title: 'Paris For One',
                    author: 'Jojo Moyes',
                    url: 'assets/images/png/paris_for_one.png',
                  ),
                ),
                BooksHome(
                  title: 'Paris For One',
                  author: 'Jojo Moyes',
                  url: 'assets/images/png/fault_in_our_stars.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
