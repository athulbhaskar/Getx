

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Api/Repo/ApiRepo.dart';
import '../Api/connectivity_service.dart';
import '../Data/FlagDetailsModel.dart';
import '../Database/DatabaseHelper.dart';
import '../base_page/base-page_controller.dart';

class Homescreencontroller extends GetxController {
  var isPageLoading = true.obs;
  // Observable list to track data
  var items = <String>[].obs;
  var baseController = Get.find<BasePageController>();
  var flagList = <FlagResponse?>[].obs;
  var flagList1 = <FlagResponse?>[].obs;


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

    DefaultCacheManager().emptyCache(); // Clears all cached images

    flagList1.value=<FlagResponse?>[];
    if (await ConnectivityService.isConnected()) {
      final ApiRepo apiRepo = ApiRepo();
      flagList.value = await apiRepo.getAllCardDetails();

      for (var country in flagList.value) {
        await Databasehelper().insertCountry(country!);
      }
    }
    flagList1.value=await Databasehelper().getCountries();
  }
}