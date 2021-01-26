import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipublish/screens/auth/login.dart';
import 'package:ipublish/screens/auth/update_password.dart';
import 'package:ipublish/widgets/appbar_widget.dart';
import 'package:ipublish/widgets/settings_tile.dart';

class SettingsPage extends StatefulWidget {
  static const routeName = '/Settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(autoLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Settings',
                  style: TextStyle(fontFamily: 'Paltn', fontSize: 23)),
              SizedBox(height: 10),
              Center(
                child: Image.asset(
                  'assets/images/png/settings_bg.png',
                ),
              ),
              SizedBox(height: 20),
              Text('Account Preferences',
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 15)),
              SizedBox(height: 10),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen())),
                child: SettingsTile(
                  isAccount: true,
                  prefixIcon: Icon(Icons.logout),
                  label: 'Logout',
                  suffixIcon: Icon(FontAwesomeIcons.angleRight,
                      color: Colors.grey, size: 15),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UpdatePassword())),
                child: SettingsTile(
                  isAccount: true,
                  prefixIcon: Icon(Icons.lock_clock),
                  label: 'Update Password',
                  suffixIcon: Icon(FontAwesomeIcons.angleRight,
                      color: Colors.grey, size: 15),
                ),
              ),
              SizedBox(height: 20),
              Text('Application Settings',
                  style: TextStyle(fontFamily: 'Helvetica', fontSize: 15)),
              SizedBox(height: 10),
              SettingsTile(
                isAccount: false,
                prefixIcon: Icon(FontAwesomeIcons.infoCircle, size: 18),
                label: 'About App',
                suffixIcon: Icon(FontAwesomeIcons.angleRight,
                    color: Colors.grey, size: 15),
              ),
              SizedBox(height: 10),
              SettingsTile(
                isAccount: false,
                prefixIcon: Icon(FontAwesomeIcons.lock, size: 18),
                label: 'Privacy Policy',
                suffixIcon: Icon(FontAwesomeIcons.angleRight,
                    color: Colors.grey, size: 15),
              ),
              SizedBox(height: 10),
              SettingsTile(
                isAccount: false,
                prefixIcon: Icon(Icons.note, size: 18),
                label: 'Terms & Conditions',
                suffixIcon: Icon(FontAwesomeIcons.angleRight,
                    color: Colors.grey, size: 15),
              ),
              SizedBox(height: 10),
              SettingsTile(
                isAccount: false,
                prefixIcon: Icon(Icons.info, size: 18),
                label: 'Help/FAQ',
                suffixIcon: Icon(FontAwesomeIcons.angleRight,
                    color: Colors.grey, size: 15),
              ),
              SizedBox(height: 10),
              SettingsTile(
                isAccount: false,
                prefixIcon: Icon(Icons.info, size: 18),
                label: 'Share App',
                suffixIcon:
                    Icon(FontAwesomeIcons.share, color: Colors.grey, size: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
