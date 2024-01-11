import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class SignInController extends GetxController {
  TextEditingController emailUsername = TextEditingController();
  TextEditingController password = TextEditingController();
  GetStorage box = GetStorage();
 RxBool passwordVisibility = false.obs;
  RxBool loaderCheck = false.obs;
  var responseData;


  login() async {

    loaderCheck.value = true;
    String apiUrl = "http://18.232.88.126/api/auth/login";
    try {
      var response = await http.post(
        Uri.parse(apiUrl),
        body: {"uname": emailUsername.text, "password": password.text},
      );

      if (response.statusCode == 200) {
        responseData = jsonDecode(response.body);
        loaderCheck.value = false;
        box.write('success', responseData['token']['accessToken']);
        box.write('uname', responseData['user']['uname']);

      } else {
        loaderCheck.value = false;

        print("Failed to post data. Status code: ${response.statusCode}");
      }
    } catch (error) {
      loaderCheck.value = false;
      print("Error posting data: $error");
    }
  }
}
