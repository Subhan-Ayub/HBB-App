import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

class AddDailyExpController extends GetxController {
  var arg = Get.arguments;
  var checkbox1 = false.obs;
  var checkbox2 = false.obs;
  var checkbox3 = false.obs;
  var checkbox4 = false.obs;
  var checkbox5 = false.obs;
  var checkbox6 = false.obs;
  var checkbox7 = false.obs;
  var checkbox8 = false.obs;
  var checkbox9 = false.obs;
  var checkbox10 = false.obs;
  var checkbox11 = false.obs;
  var checkbox12 = false.obs;
  var checkbox13 = false.obs;
  dynamic refValue;
  TextEditingController amount = TextEditingController();
  TextEditingController prospectsName = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController cellPhone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController zip = TextEditingController();
  TextEditingController notes = TextEditingController();
  TextEditingController timeCall = TextEditingController();
  var formattedDate;

  @override
  void onInit() async {
    super.onInit();
    DateTime dateTime = DateTime.parse(arg['date'].toString());

    dateTime = dateTime.toLocal();

     formattedDate =
        "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

    print(formattedDate);
  }

  submit()async {
    print(arg['date'].runtimeType);


    var dat = {
      "prospectname": "ooo",
      "activitytype": arg['type'],
      "origdate": formattedDate.toString(),
      "phone": "0123456789",
      "cellphone": "9876543210",
      "email": "test@test.com",
      "address": "Test Address",
      "city": "Test City",
      "state": "PA",
      "zip": "12345",
      "formnotes": "Test Notes",
      "calltime": "12:00pm",
      "hiddendate": "2023-11-28",
      "exposuretypestring": "none"
    };
    var res=await apiFetcher('Post', '/api/daily-exposure', dat);
    Get.back();
  }
}
