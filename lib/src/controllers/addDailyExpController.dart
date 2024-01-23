import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hbb/src/controllers/activityController.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

class AddDailyExpController extends GetxController {
  ActivityController ac = Get.find<ActivityController>();
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
  }

  submit() async {
    print(arg['date'].runtimeType);

    var dat = {
      "prospectname": prospectsName.text,
      "activitytype": arg['type'],
      "origdate": formattedDate.toString(),
      "phone": phoneNo.text,
      "cellphone": cellPhone.text,
      "email": email.text,
      "address": address.text,
      "city": city.text,
      "state": state.text,
      "zip": zip.text,
      "formnotes": notes.text,
      "calltime": timeCall.text,
      "hiddendate": "2023-11-28",
      // ignore: prefer_interpolation_to_compose_strings
      "exposuretypestring": "${checkbox1.value ? 'threeway,' : ''}" +
          "${checkbox2.value ? 'bizbrief,' : ''}" +
          "${checkbox3.value ? 'bcard,' : ''}" +
          "${checkbox4.value ? 'ccall,' : ''}" +
          "${checkbox5.value ? 'dvd,' : ''}" +
          "${checkbox6.value ? 'pbr,' : ''}" +
          "${checkbox7.value ? 'packet,' : ''}" +
          "${checkbox8.value ? 'online,' : ''}" +
          "${checkbox9.value ? 'sizzle,' : ''}" +
          "${checkbox10.value ? 'flipchart,' : ''}" +
          "${checkbox11.value ? 'social,' : ''}" +
          "${checkbox12.value ? 'website,' : ''}" +
          "${checkbox13.value ? 'Other,' : ''}"
    };
    await apiFetcher('Post', '/api/daily-exposure', dat);
    Get.back();
    ac.getData();
  }
}
