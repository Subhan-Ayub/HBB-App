// ignore_for_file: unused_local_variable

import 'dart:convert';

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
          },
          body: jsonEncode(body),
        );
        if (response.statusCode == 200) {
          // Handle a successful response
          print('POST request successful: ${response.body}');
          return response;
        } else {
          // Handle an error response
          print('POST request failed with status: ${response.body}');
          return response.body;
        }

// GET
      case 'Get':
        response = await http.get(Uri.parse('http://18.232.88.126$url'), headers: {
          'Authorization': 'Bearer ${box.read('success')}',
        });
        if (response.statusCode == 200) {
          // Handle a successful response
          print('GET request successful: ${response.body}');
          return jsonDecode(response.body);
        } else {
          // Handle an error response
          print('GET request failed with status: ${response.body}');
          return response.body;
        }
    }

   
  } catch (e) {
    print('Error during $method request: $e');
    return e;
  }
}
