import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/activityController.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

class ConferenceCallController extends GetxController {
  dynamic refValue;
  TextEditingController timeofcall = TextEditingController();
  TextEditingController notes = TextEditingController();
  TextEditingController amount = TextEditingController();
  var check;
  ActivityController ac = Get.find<ActivityController>();
  var arg = Get.arguments;
  var formattedDate;

  @override
  void onInit() async {
    super.onInit();
    check = arg['check'] ?? 'Save';

    DateTime dateTime = DateTime.parse(arg['date'].toString());

    dateTime = dateTime.toLocal();

    formattedDate =
        "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";
  }

  submit() async {
    var obj = check == 'Save'
        ? {
            "activitytype": 3,
            "origdate": formattedDate,
            "timeofcall": timeofcall.text,
            "ccallnotes": notes.text
          }
        : {"timeofcall": timeofcall.text, "ccallnotes": notes.text};

    if (check == 'Save') {
      await apiFetcher('Post', '/api/conference-call', obj);
    }
    if (check=='update') {
      await apiFetcher('Put', '/api/conference-call/${arg['id']}', obj);
      
    }
    Get.back();
    ac.getData();
  }
}
