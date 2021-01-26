import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter/material.dart'; 
import 'package:ipublish/screens/tabs/add_to_cart.dart';
import 'package:ipublish/screens/tabs/cart_tab.dart';
import 'package:ipublish/screens/tabs/edit_profile.dart';
import 'package:ipublish/screens/tabs/home_tab.dart';
import 'package:ipublish/screens/tabs/profile_tab.dart';
import 'package:ipublish/screens/tabs/services_tab.dart';
import 'package:ipublish/widgets/tabs.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/MainPage';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  int currentPage;
  Color currentColor = Colors.deepPurple;
  Color inactiveColor = Colors.black;
  PageController tabBarController;
  List<Tabs> tabs = new List();

  @override
  void initState() {
    super.initState();
    currentPage = 0;
    tabs.add(Tabs(
        Image.asset('assets/images/png/home_icon.png'), "Home", Colors.white));
    tabs.add(Tabs(Image.asset('assets/images/png/services_icon.png'),
        "Services", Colors.white));
    tabs.add(Tabs(
        Image.asset('assets/images/png/cart_icon.png'), "Cart", Colors.white));
    tabs.add(Tabs(Image.asset('assets/images/png/profile_icon.png'), "Profile",
        Colors.white));

    tabBarController = new PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: tabBarController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            HomeTab(),
            ServicesTab(),
            CartTab(),
            ProfileTab(),
            EditProfile(),
            AddToCart(),
          ]),
      bottomNavigationBar: Container(
        child: CubertoBottomBar(
          key: Key("BottomBar"),
          barBackgroundColor: Color(0xff0440A7),
          inactiveIconColor: Colors.white,
          tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
          selectedTab: currentPage,
          tabs: tabs
              .map((value) => TabData(
                    key: Key(value.title),
                    icon: value.icon,
                    title: value.title,
                    tabColor: value.color,
                  ))
              .toList(),
          onTabChangedListener: (position, title, color) {
            setState(() {
              currentPage = position;
              tabBarController.jumpToPage(position);
            });
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    tabBarController.dispose();
    super.dispose();
  }
}
