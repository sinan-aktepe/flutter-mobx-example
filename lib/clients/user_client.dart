import 'dart:io';

import 'package:mobx_example/clients/base_api_client.dart';
import 'package:mobx_example/models/user.dart';

class UserClient {
  static const URL = "${BaseApiClient.baseUrl}/users";
  final apiClient = BaseApiClient.instance.getClient;

  Future getUsers() async {
    final response = await apiClient.get(URL);

    if (response.statusCode == HttpStatus.ok) {
      List res = response.data;
      return res.map((e) => User.fromJson(e)).toList();
    } else {
      print("Error while fetching users");
    }
  }

  Future getUser(String id) async {
    final response = await apiClient.get("$URL?id=$id");

    if (response.statusCode == HttpStatus.ok) {
      List res = response.data;
      return res.map((e) => User.fromJson(e)).toList();
    } else {
      print("Error while fetching user");
    }
  }
}
