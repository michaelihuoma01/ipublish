import 'package:flutter/material.dart';
import 'package:ipublish/screens/pages/settings.dart';
import 'package:ipublish/screens/tabs/edit_profile.dart';
import 'package:ipublish/widgets/appbar_widget.dart';
import 'package:ipublish/widgets/button.dart';
import 'package:ipublish/widgets/liked_books.dart';
import 'package:ipublish/widgets/my_orders.dart';
import 'package:ipublish/widgets/mybooks.dart';
import 'package:ipublish/widgets/saved_books.dart';
import 'package:ipublish/widgets/titled_navbar.dart';
import 'package:ipublish/widgets/titled_navbar_item.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int selectedIndex = 2;

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
    selectedIndex = 2;

    tabController = TabController(length: 4, vsync: this);
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
      appBar: AppBarWidget(
        autoLeading: false,
        title: '',
        subtitle: '',
        actions: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.settings, size: 20, color: Colors.black),
                  )),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/png/user_image.png',
                ),
                SizedBox(height: 5),
                Text('Andy Robertson',
                    style: TextStyle(fontFamily: 'Helvetica', fontSize: 20)),
                SizedBox(height: 5),
                Text('andy.robertson@gmail.com',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                SizedBox(height: 15),
                ButtonWidget(
                  title: 'Edit Profile',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                  background: true,
                ),
                SizedBox(height: 15),
                Container(
                  height: 380,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Container(
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: TitledBottomNavigationBar(
                              onTap: onItemClicked,
                              reverse: false,
                              items: [
                                TitledNavigationBarItem(
                                    title: Text('My Books',
                                        style: TextStyle(fontSize: 12))),
                                TitledNavigationBarItem(
                                    title: Text('My Orders',
                                        style: TextStyle(fontSize: 12))),
                                TitledNavigationBarItem(
                                    title: Text(
                                  'Saved',
                                  style: TextStyle(fontSize: 12),
                                )),
                                TitledNavigationBarItem(
                                    title: Text(
                                  'Liked',
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
                      ),
                      Expanded(
                        child: Container(
                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            controller: tabController,
                            children: [
                              MyProfileBooks(),
                              MyOrders(),
                              SavedBooks(),
                              LikedBooks()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
