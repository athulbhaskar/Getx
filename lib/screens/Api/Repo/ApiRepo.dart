import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../Data/FlagDetailsModel.dart';
import '../api_utils.dart';
import '../app_url.dart';
import '../connectivity_service.dart';

class ApiRepo {
   Future<List<FlagResponse?>> getAllCardDetails() async {
    if (await ConnectivityService.isConnected()) {
      var flagList = <FlagResponse>[];
      try {
        Response response = await apiUtils.get(
            url: "${AppUrl.baseUrl}${AppUrl.getAllFlagGetails}");
        if (response.statusCode == 200) {
          flagList = flagResponseFromJson(response.toString());
          return flagList;
        } else {
          debugPrint('TAG:: FlagResponse ::');
          debugPrint('TAG:: FlagResponse:: Failed with status code: ${response.statusCode}');
          return <FlagResponse?>[];
        }
      } on DioException catch (e) {
        String errorMessage;
        if (e.response != null) {
          // handle server error
          if (e.response!.data != null) {
            errorMessage = e.response!.data['message'];
            debugPrint('TAG:: FlagResponse:: Failed with status code: $errorMessage');
            return <FlagResponse?>[];
          }
        } else {
          // Handle any other exceptions
          debugPrint('TAG:: Exception:: ${e.toString()}');
          return <FlagResponse?>[];
        }
      }
      return <FlagResponse?>[];
    } else {
      debugPrint('TAG:: No internet connection');
      return <FlagResponse?>[];
    }
  }
}
