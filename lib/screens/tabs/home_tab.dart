import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipublish/screens/notifications.dart';
import 'package:ipublish/screens/pages/authors.dart';
import 'package:ipublish/screens/pages/product_page.dart';
import 'package:ipublish/screens/pages/publishers.dart';
import 'package:ipublish/screens/pages/search_page.dart';
import 'package:ipublish/screens/pages/search_results.dart';
import 'package:ipublish/widgets/appbar_text.dart';
import 'package:ipublish/widgets/books_home.dart';
import 'package:ipublish/widgets/genre.dart';
import 'package:ipublish/widgets/onboard.dart';
import 'package:ipublish/widgets/titled_navbar.dart';
import 'package:ipublish/widgets/titled_navbar_item.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;
  bool genreActive = true;
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage
          ? indicator(true, Color(0xff0440A7))
          : indicator(false, Color(0xff0440A7)));
    }
    return list;
  }

  TabController tabController;
  int selectedIndex = 1;

  void onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController..index = selectedIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = 1;

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarText(
        padded: true,
        title: 'Hello,',
        subtitle: 'Lets discover!',
        actions: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchPage()));
                  },
                  child: Icon(Icons.search, color: Colors.black)),
              SizedBox(width: 8),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationsPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.notifications_none, color: Colors.black),
                  )),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular((10))),
                  ),
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Image.asset('assets/images/png/home1.png',
                          fit: BoxFit.fill),
                      Image.asset('assets/images/png/home1.png',
                          fit: BoxFit.fill),
                      Image.asset('assets/images/png/home1.png',
                          fit: BoxFit.fill),
                      Image.asset('assets/images/png/home1.png',
                          fit: BoxFit.fill),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              SizedBox(height: 20),
              Container(
                height: 335,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: TitledBottomNavigationBar(
                          onTap: onItemClicked,
                          reverse: false,
                          items: [
                            TitledNavigationBarItem(
                                title: Text('Popular',
                                    style: TextStyle(fontSize: 12))),
                            TitledNavigationBarItem(
                                title: Text('BestSellers',
                                    style: TextStyle(fontSize: 12))),
                            TitledNavigationBarItem(
                                title: Text(
                              'Newest',
                              style: TextStyle(fontSize: 12),
                            )),
                          ],
                          currentIndex: selectedIndex,
                          activeColor: Colors.black,
                          inactiveColor: Colors.grey,
                          indicatorColor: Color(0xff0440A7),
                          enableShadow: false,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: TabBarView(
                          physics: NeverScrollableScrollPhysics(),
                          controller: tabController,
                          children: [
                            Container(
                              height: 316,
                              // width: 0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductPage()));
                                    },
                                    child: BooksHome(
                                      title: 'Paris For One',
                                      author: 'Jojo Moyes',
                                      url:
                                          'assets/images/png/fault_in_our_stars.png',
                                    ),
                                  ),
                                  BooksHome(
                                    title: 'Paris For One',
                                    author: 'Jojo Moyes',
                                    url: 'assets/images/png/paris_for_one.png',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 316,
                              // width: 0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductPage()));
                                    },
                                    child: BooksHome(
                                      title: 'Paris For One',
                                      author: 'Jojo Moyes',
                                      url:
                                          'assets/images/png/paris_for_one.png',
                                    ),
                                  ),
                                  BooksHome(
                                    title: 'Paris For One',
                                    author: 'Jojo Moyes',
                                    url:
                                        'assets/images/png/fault_in_our_stars.png',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 316,
                              // width: 0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductPage()));
                                    },
                                    child: BooksHome(
                                      title: 'Paris For One',
                                      author: 'Jojo Moyes',
                                      url:
                                          'assets/images/png/fault_in_our_stars.png',
                                    ),
                                  ),
                                  BooksHome(
                                    title: 'Paris For One',
                                    author: 'Jojo Moyes',
                                    url: 'assets/images/png/paris_for_one.png',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text('Genres',
                    style: TextStyle(fontFamily: 'Paltn', fontSize: 24)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomScrollView(
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
                          child: GenreTile(
                              search: false,
                              bgColor: Color(0xff0440A7),
                              isActive: genreActive,
                              label: 'Action'),
                        );
                      }, childCount: 5),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Books For You',
                        style: TextStyle(fontFamily: 'Paltn', fontSize: 23)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchResults(
                                      title: 'Books For You',
                                    )));
                      },
                      child: Row(
                        children: [
                          Text('View All',
                              style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 12,
                                  color: Colors.grey)),
                          SizedBox(width: 3),
                          Icon(FontAwesomeIcons.arrowRight,
                              size: 12, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 225,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BooksHome(
                        title: 'Crazy Rich \nAsians',
                        author: 'Jojo Moyes',
                        url: 'assets/images/png/crazy_rich_asians.png',
                      ),
                      BooksHome(
                        title: 'There There',
                        author: 'Jojo Moyes',
                        url: 'assets/images/png/there_there.png',
                      ),
                      BooksHome(
                        title: 'The HandMaid',
                        author: 'Jojo Moyes',
                        url: 'assets/images/png/the_handmaid.png',
                      ),
                      BooksHome(
                        title: 'There There',
                        author: 'Jojo Moyes',
                        url: 'assets/images/png/there_there.png',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Publishers',
                        style: TextStyle(fontFamily: 'Paltn', fontSize: 24)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PublisherPage()));
                      },
                      child: Row(
                        children: [
                          Text('View All',
                              style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 12,
                                  color: Colors.grey)),
                          SizedBox(width: 3),
                          Icon(FontAwesomeIcons.arrowRight,
                              size: 12, color: Colors.grey)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular((50))),
                          ),
                          child: Image.asset(
                            'assets/images/png/pub1.png',
                            // height: 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular((50))),
                          ),
                          child: Image.asset(
                            'assets/images/png/pub2.png',
                            // height: 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular((50))),
                          ),
                          child: Image.asset(
                            'assets/images/png/pub3.png',
                            // height: 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular((50))),
                          ),
                          child: Image.asset(
                            'assets/images/png/pub4.png',
                            // height: 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/png/pub5.png',
                          // height: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Authors & Artists',
                        style: TextStyle(fontFamily: 'Paltn', fontSize: 24)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AuthorsPage()));
                      },
                      child: Row(
                        children: [
                          Text('View All',
                              style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 12,
                                  color: Colors.grey)),
                          SizedBox(width: 3),
                          Icon(FontAwesomeIcons.arrowRight,
                              size: 12, color: Colors.grey)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular((50))),
                          ),
                          child: Image.asset(
                            'assets/images/png/author1.png',
                            // height: 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular((50))),
                          ),
                          child: Image.asset(
                            'assets/images/png/author2.png',
                            // height: 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular((50))),
                          ),
                          child: Image.asset(
                            'assets/images/png/author3.png',
                            // height: 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular((50))),
                          ),
                          child: Image.asset(
                            'assets/images/png/author4.png',
                            // height: 150,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
