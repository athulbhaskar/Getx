import 'package:flutter/material.dart';
import 'package:get/get.dart';

var kWidth10 = SizedBox(width: MediaQuery.of(Get.context!).size.width * 0.01);
var kWidth20 = SizedBox(width: MediaQuery.of(Get.context!).size.width * 0.02);
var kWidth30 = SizedBox(width: MediaQuery.of(Get.context!).size.width * 0.03);
var kWidth50 = SizedBox(width: MediaQuery.of(Get.context!).size.width * 0.05);
var kWidth60 = SizedBox(width: MediaQuery.of(Get.context!).size.width * 0.06);
var kHeight10 =
    SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.01);
var kHeight20 =
    SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.02);
var kHeight30 =
    SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.03);
var kHeight40 =
    SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.04);
var kHeight50 =
    SizedBox(height: MediaQuery.of(Get.context!).size.height * 0.05);

double getScreenHeight(heightValue) {
  // The equivalent of the "smallestWidth" qualifier on Android.
  //600  is a common breakpoint for a typical 7-inch tablet.
  final data = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.first);
  return data.size.shortestSide > 600 ? heightValue + 4 : heightValue;
}
