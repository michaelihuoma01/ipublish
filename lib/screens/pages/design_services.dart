import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ipublish/widgets/appbar_widget.dart';
import 'package:ipublish/widgets/services_tile.dart';

class DesignServices extends StatefulWidget {
  @override
  _DesignServicesState createState() => _DesignServicesState();
}

class _DesignServicesState extends State<DesignServices> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Design Services',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Paltn',
                    fontSize: 20,
                  )),
              SizedBox(height: 25),
              ServicesTile(
                  image: Image.asset(
                    'assets/images/png/pub1.png',
                  ),
                  title: 'Design',
                  label:
                      'Connect to tools you use everyday; like Slack, Jira, Microsoft Teams and Trello.'),
              SizedBox(height: 20),
              ServicesTile(
                  image: Image.asset(
                    'assets/images/png/pub2.png',
                  ),
                  title: 'Design',
                  label:
                      'Connect to tools you use everyday; like Slack, Jira, Microsoft Teams and Trello.'),
              SizedBox(height: 20),
              ServicesTile(
                  image: Image.asset(
                    'assets/images/png/pub3.png',
                  ),
                  title: 'Design',
                  label:
                      'Connect to tools you use everyday; like Slack, Jira, Microsoft Teams and Trello.'),
              SizedBox(height: 20),
              ServicesTile(
                  image: Image.asset(
                    'assets/images/png/pub4.png',
                  ),
                  title: 'Design',
                  label:
                      'Connect to tools you use everyday; like Slack, Jira, Microsoft Teams and Trello.'),
            ],
          ),
        ),
      ),
    );
  }
}
