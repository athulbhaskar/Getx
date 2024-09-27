import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../utils/utilss/strings.dart';
import '../../Data/FlagDetailsModel.dart';
import '../api_params.dart';
import '../api_utils.dart';
import '../app_url.dart';
import '../connectivity_service.dart';

class ApiRepo {
   Future<List<FlagResponse?>?> getAllCardDetails() async {
    if (await ConnectivityService.isConnected()) {
      try {
        Response response = await apiUtils.get(
            url: "${AppUrl.baseUrl}${AppUrl.getAllFlagGetails}");
        if (response.statusCode == 200) {
          List<FlagResponse> data = flagResponseFromJson(response.toString());
          return data;
        } else {
          debugPrint('TAG:: FlagResponse ::');
          // return FlagResponse.withError(
          //     response.statusCode!.toString(), response.statusMessage!);FF
        }
      } on DioException catch (e) {
        String errorMessage;
        if (e.response != null) {
          // handle server error
          if (e.response!.data != null) {
            errorMessage = e.response!.data['message'];
            // return FlagResponse.withError(
            //     e.response!.statusCode!, errorMessage);
          }
        } else {
          // return FlagResponse.withError(
          //     e.response!.statusCode!, AppStrings.internalError);
        }
      }
    } else {
      // return FlagResponse.withError(
      //     noInternetCode, AppStrings.noInternetMessage);
    }
  }
}
