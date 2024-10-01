

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Api/Repo/ApiRepo.dart';
import '../Data/FlagDetailsModel.dart';
import '../base_page/base-page_controller.dart';

class WelcomeController extends GetxController {
  var isPageLoading = true.obs;
  // Observable list to track data
  var items = <String>[].obs;
  var baseController = Get.find<BasePageController>();
  var flagList = <FlagResponse?>[].obs;


  @override
  Future<void> onInit() async {
    super.onInit();
    debugPrint('onInitWelcomeController');
    fetchItems();
  }

  Future<void> onRefresh() async  {
    fetchItems();
  }

  Future<void> fetchItems() async{
    isPageLoading = true.obs;
    final ApiRepo apiRepo = ApiRepo();
    flagList.value =await apiRepo.getAllCardDetails();
    debugPrint('TAG:: FlagResponse :: $flagList');


  }
}