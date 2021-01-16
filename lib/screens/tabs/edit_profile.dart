import 'package:flutter/material.dart';
import 'package:ipublish/widgets/appbar_widget.dart';
import 'package:ipublish/widgets/button.dart';
import 'package:ipublish/widgets/textformfield_widget.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  FocusNode _nameFieldFocus = FocusNode();
  FocusNode _emailFieldFocus = FocusNode();
  FocusNode _passwordFieldFocus = FocusNode();
  FocusNode _locationFieldFocus = FocusNode();

  Color _color1 = Colors.grey[300];
  Color _color2 = Colors.grey[300];
  Color _color3 = Colors.grey[300];
  Color _color4 = Colors.grey[300];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameFieldFocus.addListener(() {
      if (_nameFieldFocus.hasFocus) {
        setState(() {
          _color1 = Colors.blue[100];
        });
      } else {
        setState(() {
          _color1 = Colors.grey[300];
        });
      }
    });

    _emailFieldFocus.addListener(() {
      if (_emailFieldFocus.hasFocus) {
        setState(() {
          _color2 = Colors.blue[100];
        });
      } else {
        setState(() {
          _color2 = Colors.grey[300];
        });
      }
    });

    _passwordFieldFocus.addListener(() {
      if (_passwordFieldFocus.hasFocus) {
        setState(() {
          _color3 = Colors.blue[100];
        });
      } else {
        setState(() {
          _color3 = Colors.grey[300];
        });
      }
    });

    _locationFieldFocus.addListener(() {
      if (_locationFieldFocus.hasFocus) {
        setState(() {
          _color4 = Colors.blue[100];
        });
      } else {
        setState(() {
          _color4 = Colors.grey[300];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        autoLeading: true,
        title: '',
        subtitle: '',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/png/user_image.png',
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Text(
                    'Name',
                    style: TextStyle(fontFamily: 'Helvetica'),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 5),
                TextFormFieldWidget(
                  hintText: 'Andy Robertson',
                  fillColor: _color1,
                  focusNode: _nameFieldFocus,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Text(
                    'Email/Phone',
                    style: TextStyle(fontFamily: 'Helvetica'),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 5),
                TextFormFieldWidget(
                  hintText: 'andy.robertson@gmail.com',
                  fillColor: _color2,
                  focusNode: _emailFieldFocus,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Text(
                    'Password',
                    style: TextStyle(fontFamily: 'Helvetica'),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 5),
                TextFormFieldWidget(
                  hintText: '******************',
                  fillColor: _color3,
                  focusNode: _passwordFieldFocus,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Text(
                    'Location',
                    style: TextStyle(fontFamily: 'Helvetica'),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 5),
                TextFormFieldWidget(
                  hintText: 'Dubai, United Arab Emirates',
                  fillColor: _color4,
                  focusNode: _locationFieldFocus,
                ),
                SizedBox(height: 15),
                Center(
                  child: ButtonWidget(
                    title: 'Save Changes',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfile()));
                    },
                    background: true,
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
