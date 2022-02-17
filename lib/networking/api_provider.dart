
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:par_mobile/constants/all_color.dart';
import 'package:par_mobile/constants/constants.dart';

import 'custom_exception.dart';

class ApiProvider {
  Future<dynamic> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    dynamic responseJson;
    try {
      Map<String, String> headers = {
        "Accept": "application/json",
      };
      final response = await Dio().get(
        "$baseUrl/$url",
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );
      responseJson = _response(response);
    } on SocketException {
      Fluttertoast.showToast(
        msg: 'No Internet connection',
        backgroundColor: AllColor().red,
      );
      throw FetchDataException('No Internet connection');
    } on DioError catch (error) {
      _error(error);
    }
    return responseJson;
  }

  Future<dynamic> post(
    String url, {
    Map<String, dynamic>? data,
  }) async {
    dynamic responseJson;
    try {
      Map<String, String> headers = {
        "Accept": "application/json",
      };
      final response = await Dio().post(
        "$baseUrl/$url",
        data: data,
        options: Options(headers: headers),
      );
      responseJson = _response(response);
    } on SocketException {
      Fluttertoast.showToast(
        msg: 'No Internet connection',
        backgroundColor: AllColor().red,
      );
      throw FetchDataException('No Internet connection');
    } on DioError catch (error) {
      _error(error);
    }
    return responseJson;
  }

  dynamic _response(Response response) {
    var responseJson = response.data['data'];
    print(responseJson);
    return responseJson;
  }

  dynamic _error(DioError error) {
    switch (error.response!.statusCode) {
      case 400:
        Fluttertoast.showToast(
          msg: error.response!.data['message'],
        );
        throw BadRequestException(error.response!.data['message']);
      case 401:

      case 403:
        Fluttertoast.showToast(
          msg: error.response!.data['message'],
        );
        throw UnauthorizedException(error.response!.data['message']);
      case 500:

      default:
        String message =
            'Error occured while Communication with Server with StatusCode : ' +
                error.response!.statusCode.toString();
        Fluttertoast.showToast(msg: message);
        throw FetchDataException(message);
    }
  }
}