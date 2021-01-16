import 'package:flutter/material.dart';

class BooksHome extends StatelessWidget {
  final String title, author, url;

  const BooksHome({Key key, this.title, this.author, this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            url,
            // height: 180,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(title, style: TextStyle(fontFamily: 'Helvetica', fontSize: 15)),
          ),
          Padding( 
            padding: const EdgeInsets.only(left: 12),

            child: Text(author,
                style: TextStyle(
                    fontFamily: 'Helvetica', color: Colors.grey, fontSize: 12)),
          ),
          
        ],
      ),
    );
  }
}
