import 'package:flutter/material.dart';
import 'package:ipublish/screens/auth/forgot_password.dart';
import 'package:ipublish/screens/auth/login.dart';
import 'package:ipublish/screens/auth/onboarding.dart';
import 'package:ipublish/screens/auth/update_password.dart';
import 'package:ipublish/screens/auth/verify_otp.dart';
import 'package:ipublish/screens/mainPage.dart';
import 'package:ipublish/screens/pages/author_books.dart';
import 'package:ipublish/screens/pages/authors.dart';
import 'package:ipublish/screens/pages/delivery.dart';
import 'package:ipublish/screens/pages/my_orders.dart';
import 'package:ipublish/screens/pages/notifications.dart';
import 'package:ipublish/screens/pages/order_details.dart';
import 'package:ipublish/screens/pages/order_summary.dart';
import 'package:ipublish/screens/pages/payment.dart';
import 'package:ipublish/screens/pages/product_page.dart';
import 'package:ipublish/screens/pages/product_preview.dart';
import 'package:ipublish/screens/pages/publishers.dart';
import 'package:ipublish/screens/pages/search_page.dart';
import 'package:ipublish/screens/pages/search_results.dart';
import 'package:ipublish/screens/pages/services.dart';
import 'package:ipublish/screens/pages/settings.dart';
import 'package:ipublish/screens/pages/success.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
//    final args = settings.arguments;
    switch (settings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
          settings: RouteSettings(name: LoginScreen.routeName),
        );

      case OnBoardingScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
          settings: RouteSettings(name: OnBoardingScreen.routeName),
        );
      case UpdatePassword.routeName:
        return MaterialPageRoute(
          builder: (_) => UpdatePassword(),
          settings: RouteSettings(name: UpdatePassword.routeName),
        );
      case ForgotPassword.routeName:
        return MaterialPageRoute(
          builder: (_) => ForgotPassword(),
          settings: RouteSettings(name: ForgotPassword.routeName),
        );
      case VerifyOTP.routeName:
        return MaterialPageRoute(
          builder: (_) => VerifyOTP(),
          settings: RouteSettings(name: VerifyOTP.routeName),
        );
      case AuthorBooksPage.routeName:
        return MaterialPageRoute(
          builder: (_) => AuthorBooksPage(),
          settings: RouteSettings(name: AuthorBooksPage.routeName),
        );
      case AuthorsPage.routeName:
        return MaterialPageRoute(
          builder: (_) => AuthorsPage(),
          settings: RouteSettings(name: AuthorsPage.routeName),
        );
      case DeliveryPage.routeName:
        return MaterialPageRoute(
          builder: (_) => DeliveryPage(),
          settings: RouteSettings(name: DeliveryPage.routeName),
        );
      case MyOrdersPage.routeName:
        return MaterialPageRoute(
          builder: (_) => MyOrdersPage(),
          settings: RouteSettings(name: MyOrdersPage.routeName),
        );
      case NotificationsPage.routeName:
        return MaterialPageRoute(
          builder: (cxt) => NotificationsPage(),
          settings: RouteSettings(name: NotificationsPage.routeName),
        );
      case OrderDetails.routeName:
        return MaterialPageRoute(
          builder: (cxt) => OrderDetails(),
          settings: RouteSettings(name: OrderDetails.routeName),
        );
      case OrderSummary.routeName:
        return MaterialPageRoute(
          builder: (cxt) => OrderSummary(),
          settings: RouteSettings(name: OrderSummary.routeName),
        );
      case PaymentPage.routeName:
        return MaterialPageRoute(
          builder: (cxt) => PaymentPage(),
          settings: RouteSettings(name: PaymentPage.routeName),
        );
      case ProductPage.routeName:
        return MaterialPageRoute(
          builder: (cxt) => ProductPage(),
          settings: RouteSettings(name: ProductPage.routeName),
        );
      case ProductPreview.routeName:
        return MaterialPageRoute(
          builder: (cxt) => ProductPreview(),
          settings: RouteSettings(name: ProductPreview.routeName),
        );
      case PublisherPage.routeName:
        return MaterialPageRoute(
          builder: (cxt) => PublisherPage(),
          settings: RouteSettings(name: PublisherPage.routeName),
        );
      case SearchPage.routeName:
        return MaterialPageRoute(
          builder: (cxt) => SearchPage(),
          settings: RouteSettings(name: SearchPage.routeName),
        );
      case SearchResults.routeName:
        return MaterialPageRoute(
          builder: (cxt) => SearchResults(),
          settings: RouteSettings(name: SearchResults.routeName),
        );
      case ServicesPage.routeName:
        return MaterialPageRoute(
          builder: (cxt) => ServicesPage(),
          settings: RouteSettings(name: ServicesPage.routeName),
        );
      case SettingsPage.routeName:
        return MaterialPageRoute(
          builder: (cxt) => SettingsPage(),
          settings: RouteSettings(name: SettingsPage.routeName),
        );
      case SuccessPage.routeName:
        return MaterialPageRoute(
          builder: (cxt) => SuccessPage(),
          settings: RouteSettings(name: SuccessPage.routeName),
        );
      case MainPage.routeName:
        return MaterialPageRoute(
          builder: (cxt) => MainPage(),
          settings: RouteSettings(name: MainPage.routeName),
        );

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
