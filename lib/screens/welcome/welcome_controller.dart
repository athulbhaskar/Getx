import 'dart:async';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

import '../../utils/Routes.dart';

class WelcomeController extends GetxController {
  // SharedPreferencesService? sharedPrefService;

  final LocalAuthentication _localAuthentication = LocalAuthentication();
  bool isAuthenticated = false;

  @override
  Future<void> onInit() async {
    super.onInit();
    try {
      isAuthenticated = await _localAuthentication.authenticate(
          localizedReason: 'Authenticate to access the app',
          options: const AuthenticationOptions(
              useErrorDialogs: true,
              stickyAuth: true,
              sensitiveTransaction: true,
              biometricOnly: false));

      if(isAuthenticated){
        Get.toNamed(Routes.login);
        print("Auth Completed");
      }
    } catch (e) {
      print(e);
    }
  }

  void buttonClick() {
    Get.toNamed(Routes.login);
  }
}
