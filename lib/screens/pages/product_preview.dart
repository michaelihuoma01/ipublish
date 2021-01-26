import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/material.dart';
import 'package:ipublish/widgets/appbar_widget.dart';

class ProductPreview extends StatefulWidget {
  static const routeName = '/ProductPreview';

  @override
  _ProductPreviewState createState() => _ProductPreviewState();
}

class _ProductPreviewState extends State<ProductPreview> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.waves), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
          ],
          iconSize: 15,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontSize: 12),
          type: BottomNavigationBarType.fixed,
        ),
        appBar: AppBarWidget(
            title: 'Paris For One',
            white: false,
            autoLeading: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.search, color: Colors.white),
              ),
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text('Chapter One',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Paltn',
                      fontSize: 23,
                    )),
                SizedBox(height: 20),
                Text(
                    'Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One  Paris For One ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    )),
              ],
            ),
          ),
        ));
  }
}
