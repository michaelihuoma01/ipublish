import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipublish/screens/pages/product_preview.dart';
import 'package:ipublish/screens/tabs/add_to_cart.dart';
import 'package:ipublish/widgets/appbar_widget.dart';
import 'package:ipublish/widgets/button.dart';

class ProductPage extends StatefulWidget {
  static const routeName = '/ProductPage';

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  String title = 'Get a Free PDF Sample';
  Color color = Colors.white12;
  bool isSelected = true;
  bool isSelected1 = false;
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  int selectedIndex = 0;

  void onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController..index = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = new ScreenScaler();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        autoLeading: true,
        white: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(FontAwesomeIcons.share, size: 20, color: Colors.white),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: ButtonWidget(
          title: 'AED 49.99 - Add To Cart',
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddToCart()));
          },
          background: true,
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              height: 350,
              color: Color(0xff0440A7),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Row(
                    //   children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (isSelected == true) {
                                      setState(() {
                                        isSelected1 = true;

                                        isSelected = false;
                                      });
                                    } else {
                                      setState(() {
                                        isSelected = true;
                                        isSelected1 = false;

                                        title = 'Get a Free PDF Sample';
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.white12,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular((10))),
                                    ),
                                    child: Icon(FontAwesomeIcons.bookOpen,
                                        size: 20,
                                        color: isSelected
                                            ? Color(0xff0440A7)
                                            : Colors.white),
                                  ),
                                ),
                                SizedBox(height: 20),
                                InkWell(
                                  onTap: () {
                                    if (isSelected1 == true) {
                                      setState(() {
                                        isSelected1 = false;
                                        isSelected = true;
                                      });
                                    } else {
                                      setState(() {
                                        isSelected1 = true;
                                        isSelected = false;

                                        title = 'Read a Free PDF Sample';
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: isSelected1
                                          ? Colors.white
                                          : Colors.white12,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular((10))),
                                    ),
                                    child: Icon(FontAwesomeIcons.filePdf,
                                        size: 20,
                                        color: isSelected1
                                            ? Color(0xff0440A7)
                                            : Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/png/paris_for_one.png',
                            height: 200,
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 215,
                          child: Center(
                            child: Image.asset(
                              'assets/images/png/discount.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    //   ],
                    // ),
                    SizedBox(height: 10),
                    Container(
                      width: scaler.getWidth(16),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.all(Radius.circular((10))),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text('Rating',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 11)),
                                Text('4.7',
                                    style: TextStyle(
                                        fontFamily: 'Helvetica',
                                        color: Colors.white,
                                        fontSize: 14)),
                              ],
                            ),
                            SizedBox(width: 10),
                            Text('|',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 17)),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text('Pages',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 11)),
                                Text('245',
                                    style: TextStyle(
                                        fontFamily: 'Helvetica',
                                        color: Colors.white,
                                        fontSize: 14))
                              ],
                            ),
                            SizedBox(width: 10),
                            Text('|',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 17)),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text('Language',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 11)),
                                Text('ENG',
                                    style: TextStyle(
                                        fontFamily: 'Helvetica',
                                        color: Colors.white,
                                        fontSize: 14)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.favorite_outline, color: Colors.white),
                        InkWell(
                          onTap: () {
                            EpubViewer.setConfig(
                                identifier: 'iosBook',
                                enableTts: true,
                                allowSharing: false,
                                nightMode: true,
                                scrollDirection: EpubScrollDirection.VERTICAL);
                            EpubViewer.openAsset(
                                'assets/the_diary_of_a_young_girl.epub');
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => ProductPreview()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular((10))),
                              border:
                                  Border.all(width: 1.0, color: Colors.white),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Text(
                                title,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Icon(Icons.bookmark_outline, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // height: 0,
              width: double.infinity,
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.horizontal_rule),
                      title: Text('Description',
                          style: TextStyle(fontFamily: 'Paltn'))),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.horizontal_rule),
                      title: Text('Reviews',
                          style: TextStyle(fontFamily: 'Paltn'))),
                ],
                iconSize: 0,
                elevation: 0,
                selectedIconTheme: IconThemeData(color: Color(0xff0440A7)),
                unselectedIconTheme: IconThemeData(color: Colors.transparent),
                backgroundColor: Colors.white,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.black,
                showUnselectedLabels: true,
                currentIndex: selectedIndex,
                selectedFontSize: 17,
                unselectedFontSize: 16,
                type: BottomNavigationBarType.fixed,
                onTap: onItemClicked,
              ),
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TabBarView(
                    controller: tabController,
                    physics: ClampingScrollPhysics(),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text('Nell is a 26 year old'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text('Matthew is a 36 year old'),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
