//class for naming routes used in the app
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:initialsetup/screens/login/login_binder.dart';
import 'package:initialsetup/screens/login/login_controller.dart';
import 'package:initialsetup/screens/login/login_ui.dart';

import '../screens/welcome/welcome_binder.dart';
import '../screens/welcome/welcome_ui.dart';
class Routes {
  static const String welcome = '/welcome';
  static const String login ='/login';

}

//configuration for routes used in app
final List<GetPage> appPages = [
  GetPage(
      name: Routes.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding()),

  GetPage(
      name: Routes.login,
      page: () => const LoginView(),
      binding:LoginBinding()),

];
