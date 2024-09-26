import 'package:get/get.dart';

import 'SplashController.dart';

class Splashbinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}