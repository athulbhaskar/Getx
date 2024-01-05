import 'dart:async';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // SharedPreferencesService? sharedPrefService;
  var isLoggedIn = false.obs;
  var isPageLoading = true.obs;

  @override
  Future<void> onInit() async {
    super.onInit();

  }

  buttonClick() {
  }
}