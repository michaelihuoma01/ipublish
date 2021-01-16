import 'package:flutter/material.dart';
import 'package:ipublish/screens/pages/design_services.dart';
import 'package:ipublish/widgets/appbar_text.dart';
import 'package:ipublish/widgets/service_widget.dart';

class ServicesTab extends StatefulWidget {
  @override
  _ServicesTabState createState() => _ServicesTabState();
}

class _ServicesTabState extends State<ServicesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarText(
        padded: true,
        title: 'Choose your',
        subtitle: 'Services',
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DesignServices()));
                },
                child: ServicesWidget(
                  image: Image.asset(
                    'assets/images/png/design_services.png',
                  ),
                  service: 'Design',
                ),
              ),
              ServicesWidget(
                image: Image.asset(
                  'assets/images/png/edit_and_copyedit.png',
                ),
                service: 'Edit & Copyedit',
              ),
              ServicesWidget(
                image: Image.asset(
                  'assets/images/png/finalize_services.png',
                ),
                service: 'Finalize',
              ),
              ServicesWidget(
                image: Image.asset(
                  'assets/images/png/revise_and_review.png',
                ),
                service: 'Revise & Review',
              ),
              ServicesWidget(
                image: Image.asset(
                  'assets/images/png/marketing_services.png',
                ),
                service: 'Marketing',
              ),
              ServicesWidget(
                image: Image.asset(
                  'assets/images/png/printing.png',
                ),
                service: 'Printing',
              ),
            ],
          ),
        ),
      ),

      // SafeArea(
      //   child: SingleChildScrollView(
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 30),
      //       child: Column(
      //         children: [
      //           Row(
      //             children: [
      //               Expanded(
      //                 child: InkWell(
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => DesignServices()));
      //                   },
      //                   child: Container(
      //                     height: 185,
      //                     child: ServicesWidget(
      //                       image: Image.asset(
      //                         'assets/images/png/design_services.png',
      //                       ),
      //                       service: 'Design',
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               Expanded(
      //                 child: Container(
      //                   height: 185,
      //                   child: ServicesWidget(
      //                     image: Image.asset(
      //                       'assets/images/png/edit_and_copyedit.png',
      //                     ),
      //                     service: 'Edit & Copyedit',
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Expanded(
      //                 child: Container(
      //                   height: 185,
      //                   child: ServicesWidget(
      //                     image: Image.asset(
      //                       'assets/images/png/finalize_services.png',
      //                     ),
      //                     service: 'Finalize',
      //                   ),
      //                 ),
      //               ),
      //               Expanded(
      //                 child: Container(
      //                   height: 185,
      //                   child: ServicesWidget(
      //                     image: Image.asset(
      //                       'assets/images/png/revise_and_review.png',
      //                     ),
      //                     service: 'Revise & Review',
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Expanded(
      //                 child: Container(
      //                   height: 185,
      //                   child: ServicesWidget(
      //                     image: Image.asset(
      //                       'assets/images/png/marketing_services.png',
      //                     ),
      //                     service: 'Marketing',
      //                   ),
      //                 ),
      //               ),
      //               Expanded(
      //                 child: Container(
      //                   height: 185,
      //                   child: ServicesWidget(
      //                     image: Image.asset(
      //                       'assets/images/png/design_services.png',
      //                     ),
      //                     service: 'Printing',
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
