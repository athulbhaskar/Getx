import 'dart:async';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  // SharedPreferencesService? sharedPrefService;
  var isLoggedIn = false.obs;
  var isPageLoading = true.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    // sharedPrefService = await SharedPreferencesService.instance;
    //
    // ///return false for first time user
    // isLoggedIn.value =
    //     sharedPrefService!.getBoolSession(SharedPrefStrings.isLoggedIn) ??
    //         false;
    //
    // if (isLoggedIn.value) {
    //   Get.offNamed(Routes.homePage);
    // }else{
    //   isPageLoading.value = false;
    // }
  }

  buttonClick() {
    // Get.toNamed(Routes.login);
  }
}