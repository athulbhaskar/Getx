//class for naming routes used in the app
import 'package:autovista/screens/capture_images/binding/capture_images_binding.dart';
import 'package:autovista/screens/capture_images/ui/capture_image_ui.dart';
import 'package:get/get.dart';
import '../screens/generate_report/binding/generate_report_binding.dart';
import '../screens/generate_report/ui/generate_report_ui.dart';
import '../screens/home_page/binding/home_binding.dart';
import '../screens/home_page/ui/home_ui.dart';
import '../screens/login/binding/login_binding.dart';
import '../screens/login/ui/login_ui.dart';
import '../screens/resubmit_images/binding/resubmit_binding.dart';
import '../screens/resubmit_images/ui/resubmit_ui.dart';
import '../screens/welcome/binding/welcome_binding.dart';
import '../screens/welcome/ui/welcome_ui.dart';

class Routes {
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String homePage = '/homePage';
  static const String basePage = '/basePage';
  static const String generateReport = '/generateReport';
  static const String captureImage = '/captureImage';
  static const String viewReport = '/viewReport';
  static const String reSubmitImage = '/reSubmitImage';

}

//configuration for routes used in app
final List<GetPage> appPages = [
  GetPage(
      name: Routes.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding()),
  GetPage(
      name: Routes.login,
      page: () => const LoginUI(),
      binding: LoginBinding()),
  GetPage(
      name: Routes.generateReport,
      page: () => const GenerateReportUI(),
      binding: GenerateReportBinding()),
  GetPage(
      name: Routes.homePage,
      page: () => const HomePageUi(),
      binding: HomePageBinding()),
  GetPage(
      name: Routes.captureImage,
      page: () => const CaptureImagesUI(),
      binding: CaptureImageBinding()),
  GetPage(
      name: Routes.reSubmitImage,
      page: () => const ReSubmitImageView(),
      binding: ReSubmitBinding())
];
