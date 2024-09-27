import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:initialsetup/screens/Api/Repo/ApiRepo.dart';
import 'package:initialsetup/screens/base_page/base-page_controller.dart';

import '../Data/FlagDetailsModel.dart';

class WelcomeController extends GetxController {
  var isPageLoading = true.obs;
  // Observable list to track data
  var items = <String>[].obs;
  var baseController = Get.find<BasePageController>();
  var data =List<FlagResponse?>.empty.obs;


  @override
  Future<void> onInit() async {
    super.onInit();
    var isPageLoading = false.obs;
    debugPrint('onInitWelcomeController');
    fetchItems();
  }

  Future<void> onRefresh() async  {

  }

  Future<void> fetchItems() async{
    data.value =await ApiRepo().getAllCardDetails();
    debugPrint('TAG:: FlagResponse :: $data');


  }
}