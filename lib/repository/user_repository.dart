import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart' as http;
import 'package:ipublish/helpers/remote_config.dart';
import 'package:ipublish/helpers/utility.dart';
import 'package:ipublish/models/iresponse.dart';
import 'package:ipublish/models/password.dart';
import 'package:ipublish/models/user.dart';
import 'package:ipublish/models/verify_otp.dart';
import 'package:ipublish/screens/auth/verify_otp.dart';

const headers = {
  "content-type": "application/json",
  "accept": "application/json",
};

final RemoteConfigService _remoteConfigService = getIt<RemoteConfigService>();

final String url = '${_remoteConfigService.getBaseUrl}';

Future<IResponse<User>> login(User user) async {
  Map<String, String> headers = {
    "content-type": "application/json",
    "accept": "application/json",
  };

  var res = await http.post(
    "http://ipublish.alraad.online/api/login",
    // body: json.encode(user.toMap()),
    body: json.encode(user.loginCredentials()),
    headers: headers,
  );

  IResponse<User> alRes = IResponse(
    statusCode: res.statusCode,
    message: json.decode(res.body)['message'],
  );

  // TODO: Remove, Inherit from Interceptor
  switch (res.statusCode) {
    case 200:
    case 409:
      alRes.data = User.fromJSON(json.decode(res.body)['data']);
      alRes.token = json.decode(res.body)['data']['token'];
      break;
    default:
      break;
  }

  print(res.statusCode);
  print(res.body);

  return alRes;
}

Future<IResponse<User>> userSignUp(User user) async {
  Map<String, String> headers = {
    "content-type": "application/json",
    "accept": "application/json",
  };

  var res = await http.post(
    "http://ipublish.alraad.online/api/register",
    body: json.encode(user.toMap()),
    headers: headers,
  );

  final Map data = json.decode(res.body);
  IResponse<User> alRes = IResponse(
    statusCode: res.statusCode,
    message: json.decode(res.body)['message'],
  );

  // TODO: Remove, Inherit from Interceptor
  switch (res.statusCode) {
    case 200:
    case 409:
      alRes.data = User.fromJSON(data['data']);
      alRes.token = data['data']['token'];
      break;
    default:
      break;
  }

  print(res.statusCode);
  print(res.body);

  return alRes;
}

Future<IResponse<VerifyToken>> verifyToken(
    VerifyToken _verifyToken, BuildContext context) async {
  final storage = getIt<FlutterSecureStorage>();
  final token = await storage.read(key: 'token');
  Map<String, String> headers = {
    "content-type": "application/json",
    "accept": "application/json",
    // "Authorization": "Bearer $token",
  };
  var res = await http.post(
    "http://ipublish.alraad.online/api/verify-otp",
    headers: headers,
    body: json.encode(_verifyToken.toMap()),
  );

  IResponse<VerifyToken> alRes = IResponse(
    statusCode: res.statusCode,
    message: json.decode(res.body)['message'],
  );
  switch (res.statusCode) {
    case 200:
    case 409:
      alRes.data = json.decode(res.body)['data'];
      break;
    default:
      break;
  }

  final Map data = json.decode(res.body);
  final model = IResponse<VerifyToken>.fromJson(data);
  if (data['data'] is Map) {
    model.data = VerifyToken.fromJSON(data['data']);
  }
  print(res.statusCode);
  print(res.body);
  print(data);

  return model;
}
