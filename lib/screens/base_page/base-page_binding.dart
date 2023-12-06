import 'package:get/get.dart';
import 'base-page_controller.dart';

class BaseBinding implements Bindings {
  BaseBinding();

  @override
  void dependencies() {
    Get.put(BasePageController());
  }
}
