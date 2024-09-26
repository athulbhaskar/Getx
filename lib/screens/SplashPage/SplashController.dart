import 'dart:async';
import 'package:get/get.dart';
import 'package:initialsetup/utils/Routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 5), () => Get.toNamed(Routes.welcome));
  }
}
