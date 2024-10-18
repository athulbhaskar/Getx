//class for naming routes used in the app
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:initialsetup/screens/SplashPage/SplashBinding.dart';
import 'package:initialsetup/screens/SplashPage/SplashView.dart';

import '../screens/HomeScreen/HomeScreenBinder.dart';
import '../screens/HomeScreen/HomeScreenui.dart';
import '../screens/welcome/welcome_binder.dart';
import '../screens/welcome/welcome_ui.dart';
class Routes {
  static const String welcome = '/welcome';
  static const String initial = '/';
  static const String homescreen = '/homescreen';
}

//configuration for routes used in app
final List<GetPage> appPages = [
  GetPage(
      name: Routes.initial,
      page: () =>  Splashview(),
      binding: Splashbinding()),
  GetPage(
      name: Routes.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding()),
  GetPage(
      name: Routes.homescreen,
      page: () => HomeScreenui(),
      binding: Homescreenbinder()),


];
