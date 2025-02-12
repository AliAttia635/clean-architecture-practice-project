import 'dart:convert';

import 'package:clean_architecture_practice/core/networking/api_constants.dart';
import 'package:clean_architecture_practice/core/networking/dio_factory.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  final Dio _dio = DioFactory.getDio(); // Use Dio from DioFactory

  Future<dynamic> get(
      {required String endPoint, Map<String, dynamic>? queryParams}) async {
    var response = await _dio.get('${ApiConstants.baseUrl}$endPoint');
    Map<String, dynamic> data = jsonDecode(response.data);
    return data;
  }
}
