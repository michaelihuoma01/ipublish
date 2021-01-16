// import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:ipublish/screens/notifications.dart';
// import 'package:ipublish/screens/pages/product_page.dart';
// import 'package:ipublish/screens/pages/search_page.dart';
// import 'package:ipublish/screens/pages/search_results.dart';
// import 'package:ipublish/widgets/appbar_text.dart';
// import 'package:ipublish/widgets/appbar_widget.dart';
// import 'package:ipublish/widgets/books.dart';
// import 'package:ipublish/widgets/books_home.dart';
// import 'package:ipublish/widgets/genre.dart';
// import 'package:ipublish/widgets/onboard.dart';
// import 'package:ipublish/widgets/tabs.dart';

// class HomeTab extends StatefulWidget {
//   @override
//   _HomeTabState createState() => _HomeTabState();
// }

// class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
//   final int _numPages = 0;
//   final PageController _pageController = PageController(initialPage: 0);

//   int _currentPage = 0;
//   bool genreActive = true;

//   int currentPage;
//   Color currentColor = Colors.deepPurple;
//   Color inactiveColor = Colors.black;
//   PageController tabBarController;
//   List<Tabs> tabs = new List();

//   List<Widget> _buildPageIndicator() {
//     List<Widget> list = [];
//     for (int i = 0; i < _numPages; i++) {
//       list.add(i == _currentPage
//           ? indicator(true, Color(0xff0440A7))
//           : indicator(false, Color(0xff0440A7)));
//     }
//     return list;
//   }

//   @override
//   void initState() {
//     super.initState();
//     currentPage = 0;
//     tabs.add(Tabs(Icons.home, "Home", Colors.white));
//     tabs.add(Tabs(Icons.home_repair_service_sharp, "Services", Colors.white));
//     tabs.add(Tabs(Icons.shopping_cart, "Cart", Colors.white));
//     tabs.add(Tabs(FontAwesomeIcons.userAlt, "Profile", Colors.white));

//     tabBarController = new PageController(initialPage: 0);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBarText(
//         padded: true,
//         title: 'Hello,',
//         subtitle: 'Lets discover!',
//         actions: [
//           Row(
//             children: [
//               InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => SearchPage()));
//                   },
//                   child: Icon(Icons.search, color: Colors.black)),
//               SizedBox(width: 8),
//               InkWell(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => NotificationsPage()));
//                   },
//                   child: Icon(Icons.notifications_none, color: Colors.black)),
//               SizedBox(width: 7),
//             ],
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 0),
//                 Container(
//                   height: 100,
//                   child: PageView(
//                     physics: ClampingScrollPhysics(),
//                     controller: _pageController,
//                     onPageChanged: (int page) {
//                       setState(() {
//                         _currentPage = page;
//                       });
//                     },
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.all(5),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((8))),
//                           ),
//                           child: Center(
//                             child: Image.asset(
//                               'assets/images/png/home1.png',
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(5),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((8))),
//                           ),
//                           child: Center(
//                             child: Image.asset(
//                               'assets/images/png/home1.png',
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(5),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((8))),
//                           ),
//                           child: Center(
//                             child: Image.asset(
//                               'assets/images/png/home1.png',
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(5),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((8))),
//                           ),
//                           child: Center(
//                             child: Image.asset(
//                               'assets/images/png/home1.png',
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 7),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: _buildPageIndicator(),
//                 ),
//                 SizedBox(height: 10),
//                 Container(
//                   height: 316,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => ProductPage()));
//                         },
//                         child: BooksHome(
//                           title: 'Paris For One',
//                           author: 'Jojo Moyes',
//                           url: 'assets/images/png/paris_for_one.png',
//                         ),
//                       ),
//                       BooksHome(
//                         title: 'Paris For One',
//                         author: 'Jojo Moyes',
//                         url: 'assets/images/png/fault_in_our_stars.png',
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text('Genres',
//                     style: TextStyle(fontFamily: 'Paltn', fontSize: 23)),
//                 CustomScrollView(
//                   shrinkWrap: true,
//                   physics: const ClampingScrollPhysics(),
//                   slivers: [
//                     SliverGrid(
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3, childAspectRatio: 2.6),
//                       delegate: SliverChildBuilderDelegate(
//                           (BuildContext context, int index) {
//                         return InkWell(
//                           onTap: () {
//                             if (genreActive == false) {
//                               setState(() {
//                                 genreActive = true;
//                               });
//                             } else {
//                               setState(() {
//                                 genreActive = false;
//                               });
//                             }
//                             print(genreActive);
//                           },
//                           child: GenreTile(
//                               search: false,
//                               bgColor: Color(0xff0440A7),
//                               isActive: genreActive,
//                               label: 'Action'),
//                         );
//                       }, childCount: 5),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Books For You',
//                         style: TextStyle(fontFamily: 'Paltn', fontSize: 23)),
//                     Row(
//                       children: [
//                         Text('View All',
//                             style: TextStyle(
//                                 fontFamily: 'Helvetica',
//                                 fontSize: 12,
//                                 color: Colors.grey)),
//                         SizedBox(width: 3),
//                         Icon(FontAwesomeIcons.arrowRight,
//                             size: 12, color: Colors.grey)
//                       ],
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 210,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       BooksHome(
//                         title: 'Paris For One',
//                         author: 'Jojo Moyes',
//                         url: 'assets/images/png/crazy_rich_asians.png',
//                       ),
//                       BooksHome(
//                         title: 'Paris For One',
//                         author: 'Jojo Moyes',
//                         url: 'assets/images/png/there_there.png',
//                       ),
//                       BooksHome(
//                         title: 'Paris For One',
//                         author: 'Jojo Moyes',
//                         url: 'assets/images/png/the_handmaid.png',
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Publishers',
//                         style: TextStyle(fontFamily: 'Paltn', fontSize: 23)),
//                     Row(
//                       children: [
//                         Text('View All',
//                             style: TextStyle(
//                                 fontFamily: 'Helvetica',
//                                 fontSize: 12,
//                                 color: Colors.grey)),
//                         SizedBox(width: 3),
//                         Icon(FontAwesomeIcons.arrowRight,
//                             size: 12, color: Colors.grey)
//                       ],
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 100,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(width: 2.0, color: Colors.black),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((50))),
//                           ),
//                           child: Image.asset(
//                             'assets/images/png/pub1.png',
//                             // height: 150,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(width: 2.0, color: Colors.black),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((50))),
//                           ),
//                           child: Image.asset(
//                             'assets/images/png/pub2.png',
//                             // height: 150,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(width: 2.0, color: Colors.black),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((50))),
//                           ),
//                           child: Image.asset(
//                             'assets/images/png/pub3.png',
//                             // height: 150,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(width: 2.0, color: Colors.black),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((50))),
//                           ),
//                           child: Image.asset(
//                             'assets/images/png/pub4.png',
//                             // height: 150,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Image.asset(
//                           'assets/images/png/pub5.png',
//                           // height: 150,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 RotatedBox(
//                   quarterTurns: 3,
//                                   child: CubertoBottomBar(
//                     key: Key("BottomBar"),
//                     barBackgroundColor: Color(0xff0440A7),
//                     inactiveIconColor: Colors.white,
//                     tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
//                     selectedTab: currentPage,
//                     tabs: tabs
//                         .map((value) => TabData(
//                               key: Key(value.title),
//                               iconData: value.icon,
//                               title: value.title,
//                               tabColor: value.color,
//                             ))
//                         .toList(),
//                     onTabChangedListener: (position, title, color) {
//                       setState(() {
//                         currentPage = position;
//                         tabBarController.jumpToPage(position);
//                       });
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Authors & Artists',
//                         style: TextStyle(fontFamily: 'Paltn', fontSize: 23)),
//                     Row(
//                       children: [
//                         Text('View All',
//                             style: TextStyle(
//                                 fontFamily: 'Helvetica',
//                                 fontSize: 12,
//                                 color: Colors.grey)),
//                         SizedBox(width: 3),
//                         Icon(FontAwesomeIcons.arrowRight,
//                             size: 12, color: Colors.grey)
//                       ],
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 100,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(width: 2.0, color: Colors.black),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((50))),
//                           ),
//                           child: Image.asset(
//                             'assets/images/png/author1.png',
//                             // height: 150,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(width: 2.0, color: Colors.black),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((50))),
//                           ),
//                           child: Image.asset(
//                             'assets/images/png/author2.png',
//                             // height: 150,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(width: 2.0, color: Colors.black),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((50))),
//                           ),
//                           child: Image.asset(
//                             'assets/images/png/author3.png',
//                             // height: 150,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             border: Border.all(width: 2.0, color: Colors.black),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular((50))),
//                           ),
//                           child: Image.asset(
//                             'assets/images/png/author4.png',
//                             // height: 150,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
