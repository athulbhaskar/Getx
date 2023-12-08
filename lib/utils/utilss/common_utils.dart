import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CommonUtils {
  CommonUtils._();

  ///function to check whether the device is iPad
  static bool isIPad(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final diagonal =
        sqrt((size.width * size.width) + (size.height * size.height));
    return diagonal >= 1024;
  }

  ///function to check the OS version of apple device
  static int checkAppleVersion() {
    int? appleDeviceVersion = 1;
    if (Platform.isIOS) {
      String? version = Platform.operatingSystemVersion;
      ///ios version is : Version 15.4 (Build 19E240)
      var versionValue = version.split('.');
      versionValue[0] = versionValue[0].replaceAll(RegExp(r'[^0-9]'), "");
      appleDeviceVersion = int.parse(versionValue[0]);
    }
    return appleDeviceVersion;
  }

  ///function to hide the keyboard
  static void keyboardHide(BuildContext context) {
    try {
      FocusScope.of(context).unfocus();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static setTimer(triggerFunction) {
    Timer(const Duration(seconds: 4), () => triggerFunction());
  }

  ///function to check the storage permission status of the device
  static Future<PermissionStatus?> checkPlatformStoragePermission() async {
    PermissionStatus? status;
    if (Platform.isAndroid) {
      var androidInfo = await DeviceInfoPlugin().androidInfo;
      var release = androidInfo.version.release;
      int version = int.parse(release);

      ///storage status for android 13 is deprecated
      if (version > 12) {
        status = await Permission.mediaLibrary.status;
      } else {
        status = await Permission.storage.status;
      }
    } else {
      status = await Permission.storage.status;
    }
    return status;
  }
}
