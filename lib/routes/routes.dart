import 'package:aerg_hstu/view/main_bottom_nav_page.dart';
import 'package:aerg_hstu/view/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String mainNavScreen = '/main_nav_screen';

  static final routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: mainNavScreen, page: () => const MainBottomNavPage()),
  ];
}
