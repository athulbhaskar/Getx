//class for naming routes used in the app
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../screens/welcome/welcome_binder.dart';
import '../screens/welcome/welcome_ui.dart';
class Routes {
  static const String welcome = '/welcome';

}

//configuration for routes used in app
final List<GetPage> appPages = [
  GetPage(
      name: Routes.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding()),

];
