import 'dart:developer';

import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

import '../../exception/api_failure.dart';



dio.Response<dynamic> responseHandler(
  dio.Response<dynamic> response,
) {
  log(response.toString());
  switch (response.statusCode) {
    case 200:
    case 201:
    case 202:
      final Map<String, dynamic> jsonResponse = response.data as Map<String, dynamic>;

      if (response.requestOptions.path.contains('users/sign')) {
        if (jsonResponse.containsKey('success') && jsonResponse['success'] == true) {
          final token = jsonResponse['token']; //it depends on how your server sending cookie

          log(token);
          // CommonVariables.settings.write(TOKEN, token);
          return response;
        }
      }

      if (jsonResponse.containsKey('status')) {
        if (jsonResponse['status'] < 200 || jsonResponse['status'] > 205) {
          throw Failure(
            message: jsonResponse['message'] as String,
            details: jsonResponse['error'],
            errorCode: jsonResponse['status'],
          );
        }
      }
      // if (jsonResponse.containsKey('error')) {
      //   throw Failure(
      //     message: jsonResponse['error']['message'] as String,
      //     errorCode: jsonResponse['error_code'],
      //   );
      // }
      // var responseJson = response.body;
      return response;

    case 500:
      throw Failure(message: "Server Error please retry later".tr);
    case 403:
      throw Failure(
        message: 'Error occurred please check internet and retry.'.tr,
      );
    case 400:
      throw Failure(
        message: 'Bad request.'.tr,
      );
    case 404:
      throw Failure(message: 'Page not found'.tr);
    case 405:
      // final authController = Get.find<AuthController>();
      // authController.logout();
      throw Failure(message: 'Authorization problem, Please login again'.tr);
    default:
      throw Failure(message: 'Error occurred retry'.tr);
  }
}