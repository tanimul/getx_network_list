import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:getx_network_list/model/user_model.dart';
import 'package:getx_network_list/utils/app_config.dart';

class UserRepository {
  final Dio _dio = Dio();

  Future<UserModel?> getUsers() async {
    Response<dynamic>? response;
    try {
      response = await _dio.get(
        '${AppConfig.baseURL}/users',
        options: Options(
          headers: <String, String>{"Accept": "application/json"},
        ),
      );
    } on DioError catch (e) {
      debugPrint(e.message);
    } catch (e) {
      debugPrint(e.toString());
    }
    if (response != null && response.statusCode == 200) {
      debugPrint("Repository-> getUsers: ${response.data}");

      final data = json.decode(response.toString());
      return UserModel.fromJson(data as Map<String, dynamic>);
    }

    return null;
  }
}
