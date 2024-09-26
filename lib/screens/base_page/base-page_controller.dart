import 'package:get/get.dart';

class BasePageController extends GetxController {
  var isPageLoading = false.obs;

  setLoading(value) {
    isPageLoading.value = value;
  }
}
