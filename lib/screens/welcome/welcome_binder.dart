import 'package:get/get.dart';
import 'package:initialsetup/screens/welcome/welcome_controller.dart';

class WelcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(WelcomeController());
  }
}