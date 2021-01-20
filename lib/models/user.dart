import 'dart:convert';

import 'package:ipublish/helpers/custom_trace.dart';

class User {
  // used to indicate if client is logged in or not
  // bool auth;
  // String email, phone, password, uuid, city, username, fullName;
  String email, phone, password, uuid, name;

  User();

  User.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      // auth = jsonMap['auth'];

      email = jsonMap['email'];
      phone = jsonMap['phone'];
      uuid = jsonMap['uuid'];
      name = jsonMap['full_name'];
    } catch (e) {
      print(CustomTrace(StackTrace.current, message: e));
    }
  }

  Map toMap() {
    var map = new Map<String, dynamic>();

    map["email"] = email;
    map["password"] = password;
    map["phone"] = phone;
    map["uuid"] = uuid;
    map["name"] = name;

    return map;
  }

  Map loginCredentials() {
    var map = new Map<String, dynamic>();
    map["email"] = email;
    map["password"] = password;
    return map;
  }

  @override
  String toString() {
    var map = this.toMap();
    // map["auth"] = this.auth;
    return map.toString();
  }
}
