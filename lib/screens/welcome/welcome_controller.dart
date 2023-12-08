import 'dart:async';
import 'package:get/get.dart';

import '../../utils/notificationserviece.dart';

class WelcomeController extends GetxController {
  // SharedPreferencesService? sharedPrefService;
  var isLoggedIn = false.obs;
  var isPageLoading = true.obs;


  @override
  Future<void> onInit() async {
    super.onInit();
    Get.put(NotificationService());
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
    final NotificationService _notificationService = Get.find();
    _notificationService.showNotification(
      id: 0,
      title: 'Hello',
      body: 'This is a local notification!',
    );

  }
}