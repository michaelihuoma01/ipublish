import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:ipublish/helpers/custom_trace.dart';
import 'package:ipublish/helpers/remote_config.dart';
import 'package:ipublish/helpers/utility.dart';
import 'package:ipublish/route_generator.dart';
import 'package:ipublish/screens/auth/onboarding.dart';
import 'package:ipublish/screens/mainPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final RemoteConfigService _remoteConfigService = getIt<RemoteConfigService>();

  print(_remoteConfigService.getBaseUrl);

  // await GlobalConfiguration().loadFromAsset("configurations.sample");

  // print(CustomTrace(StackTrace.current,
  //     message: "base_url: ${GlobalConfiguration().getValue('base_url')}"));
  // print(CustomTrace(StackTrace.current,
  //     message:
  //         "api_base_url: ${GlobalConfiguration().getValue('api_base_url')}"));

  await _remoteConfigService.initialise();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FlutterSecureStorage storage = getIt<FlutterSecureStorage>();

  @override
  void initState() {
    super.initState();

    _initFirebase();
  }

  void _initFirebase() async {
    await Firebase.initializeApp();
    _setupCrashlytics();
  }

  void _setupCrashlytics() async {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    await FirebaseCrashlytics.instance.sendUnsentReports();
    if (FirebaseCrashlytics.instance.isCrashlyticsCollectionEnabled) {
      print("--- crashlytics enabled");
    } else {
      print("--- crashlytics not enabled");
    }
    // if (kDebugMode) {
    //   await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    // } else {
    //   // Handle Crashlytics enabled status when not in Debug,
    //   // e.g. allow your users to opt-in to crash reporting.
    //   FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      title: 'Ipublish',
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//    @Override
// protected void onCreate(Bundle savedInstanceState) {
//   super.onCreate(savedInstanceState);

//   getWindow().addFlags(LayoutParams.FLAG_SECURE);

// }
