import 'package:chimper/Screens/HomePage/HomePage.dart';
import 'package:get/get.dart';

class Routes {
  static String home = "/";

  static String getHomeRoute() => home;
  static List<GetPage> routes = [
    GetPage(name: getHomeRoute(), page: () => HomePage())
  ];
}
