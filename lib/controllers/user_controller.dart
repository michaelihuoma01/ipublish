import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ipublish/elements/overlay_widget.dart';
import 'package:ipublish/helpers/constants.dart';
import 'package:ipublish/helpers/utility.dart';
import 'package:ipublish/models/iresponse.dart';
import 'package:ipublish/models/password.dart';
import 'package:ipublish/models/user.dart';
import 'package:ipublish/models/verify_otp.dart';
import 'package:ipublish/screens/auth/login.dart';
import 'package:ipublish/screens/mainPage.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ipublish/repository/user_repository.dart' as user_repo;

class UserController extends ControllerMVC {
  User user = new User();
  VerifyToken verify = new VerifyToken();
  String confirmedPassword;

  GlobalKey<ScaffoldState> scaffoldKey;
  GlobalKey<FormState> loginFormKey, registerFormKey;
  OverlayEntry verificationOverlay, loader;
  FlutterSecureStorage storage;
  TextEditingController addressField = TextEditingController();

  bool verificationActive = false, autoValidate = false, hidePassword = true;

  PageController pageController = PageController(initialPage: 0);

  UserController({bool withFileCtrl = false}) {
    loginFormKey = new GlobalKey<FormState>();
    registerFormKey = new GlobalKey<FormState>();
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
    storage = getIt<FlutterSecureStorage>();
  }

  login() async {
    // if (loginFormKey.currentState.validate()) {
    loader = Utility.load(scaffoldKey?.currentContext);

    IResponse<User> res = await user_repo.login(user);

    if (res.message.contains('Successful')) {
      storage.write(key: "token", value: res.token);
      storage.write(key: "name", value: res.data.name);
      storage.write(key: "phoneNumber", value: res.data.phone);
      setUserDetails(res.data);
      Navigator.push(scaffoldKey?.currentContext,
          MaterialPageRoute(builder: (context) => MainPage()));

      loader.remove();
    } else {
      Utility.showMessage(
        scaffoldKey?.currentContext,
        message: res.message,
      );
      loader.remove();
    }
    // } else {
    //   setState(() => autoValidate = true);
    // }
  }

  void verifyToken() async {
    loader = Utility.load(scaffoldKey?.currentContext);
    // dismissVerification();

    IResponse<VerifyToken> vRes =
        await user_repo.verifyToken(verify, scaffoldKey?.currentContext);
    if (vRes.status == true) {
      Navigator.push(scaffoldKey?.currentContext,
          MaterialPageRoute(builder: (context) => LoginScreen()));
      Utility.showMessage(
        scaffoldKey?.currentContext,
        message: 'OTP Verified!',
      );
      loader.remove();
    } else {
      Utility.showMessage(
        scaffoldKey?.currentContext,
        message: vRes.message,
      );
      loader.remove();
    }
  }

  void register() async {
    loader = Utility.load(scaffoldKey?.currentContext);

    print(user.toMap());

    IResponse<User> res = await user_repo.userSignUp(user);

    if (res.message.contains('Successful')) {
      // storage.write(key: "token", value: res.token);
      // storage.write(key: "name", value: res.data.name);
      // storage.write(key: "email", value: res.data.email);
      // storage.write(key: "password", value: res.data.password);

      // setUserDetails(res.data);
      toNextPage();

      Utility.showMessage(scaffoldKey?.currentContext,
          message: 'Registration Successful!');
      loader.remove();
    } else {
      Utility.showMessage(
        scaffoldKey?.currentContext,
        message: res.message,
        type: MessageTypes.error,
      );
      loader.remove();
    }
  }

  void toNextPage() {
    pageController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  void setUserDetails(User user) async {
    final userDetails = {
      'name': user.name,
      'phone': user.phone,
      'email': user.email,
      'password': user.password
    };
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(kUserDetailsKey, json.encode(userDetails));
  }

  void updateUserDetails(User user) async {
    final userDetails = {
      'name': user.name,
      'phone': user.phone,
      'email': user.email,
      'password': user.password
    };
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(kUserDetailsKey, json.encode(userDetails));
  }

  void togglePasswordVisibility() {
    setState(() => hidePassword = !hidePassword);
  }
}
