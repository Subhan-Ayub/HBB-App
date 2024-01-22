// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

apiFetcher(String method, url, [body]) async {
  var response;
  GetStorage box = GetStorage();
  try {
    switch (method) {
// POST
      case 'Post':
        response = await http.post(
          Uri.parse('http://18.232.88.126$url'),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer ${box.read('success')}',
          },
          body: jsonEncode(body),
        );
        if (response.statusCode == 200||response.statusCode == 201) {
          // Handle a successful response
          print('POST request successful: ${response.body}');
          return response;
        } else {
          // Handle an error response
          Get.snackbar('Error',
              'POST request failed with status: ${response.statusCode}',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              colorText: Colors.white);
          print('POST request failed with status: ${response.statusCode}');
          // return response.body;
        }

// GET
      case 'Get':
        response =
            await http.get(Uri.parse('http://18.232.88.126$url'), headers: {
          'Authorization': 'Bearer ${box.read('success')}',
        });
        if (response.statusCode == 200) {
          // Handle a successful response
          print('GET request successful: ${response.body}');
          return jsonDecode(response.body);
        } else {
          // Handle an error response
          Get.snackbar(
              'Error', 'GET request failed with status: ${response.statusCode}',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              colorText: Colors.white);
          print('GET request failed with status: ${response.body}');
        }
    }
  } catch (e) {
    Get.snackbar('Error', '$method request failed with status: $e',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white);
    print('Error during $method request: $e');
    return e;
  }
}
