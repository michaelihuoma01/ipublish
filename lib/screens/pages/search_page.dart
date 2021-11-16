import 'package:flutter/material.dart';
import 'package:ipublish/screens/pages/search_results.dart';
import 'package:ipublish/widgets/textformfield_widget.dart';

class SearchPage extends StatefulWidget {
  static const routeName = '/Search';

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool genreActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormFieldWidget(
                  hintText: 'Search',
                  iconData: Icons.search,
                  prefixIconData: Icons.arrow_back,
                  fillColor: Colors.grey[200],
                  borderColor: Colors.white,
                  onIconTap: () => Navigator.pop(context),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent Searches',
                        style:
                            TextStyle(fontFamily: 'Helvetica', fontSize: 18)),
                    Text('Clear',
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            color: Colors.grey,
                            fontSize: 13)),
                  ],
                ),
                SizedBox(height: 10),
                CustomScrollView(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  slivers: [
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, childAspectRatio: 2.6),
                      delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return InkWell(
                            onTap: () {
                              if (genreActive == false) {
                                setState(() {
                                  genreActive = true;
                                });
                              } else {
                                setState(() {
                                  genreActive = false;
                                });
                              }
                              print(genreActive);
                            },
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchResults(
                                            title: 'Search Results')));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular((8))),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Romance',
                                            style: TextStyle(
                                                fontFamily: 'Helvetica',
                                                fontSize: 12,
                                                color: Colors.black)),
                                        Icon(Icons.close, size: 12)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ));
                      }, childCount: 5),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
