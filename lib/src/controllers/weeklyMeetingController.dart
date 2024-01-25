import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/activityController.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

class WeeklyMeetingController extends GetxController {
  ActivityController ac = Get.find<ActivityController>();
  var check;
  dynamic refValue;
  TextEditingController amount = TextEditingController();
  TextEditingController meetingLocation = TextEditingController();
  TextEditingController notes = TextEditingController();
  var formattedDate;
  var arg = Get.arguments;
  @override
  void onInit() async {
    check = arg['check'] ?? 'Save';

    super.onInit();
    DateTime dateTime = DateTime.parse(arg['date'].toString());

    dateTime = dateTime.toLocal();

    formattedDate =
        "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";
  }

  RxString selectedOption = ''.obs;
  void setSelectedOption(String option) {
    selectedOption.value = option;
    print(selectedOption.value);
    update();
  }

  submit() async {
    var obj = check == 'Save'
        ? {
            "activitytype": 2,
            "origdate": formattedDate,
            "meetinglocation": meetingLocation.text,
            "wmnotes": notes.text,
            "meetingtype": selectedOption.value
          }
        : {
            "meetinglocation": meetingLocation.text,
            "wmnotes": notes.text,
            "meetingtype":selectedOption.value
          };
    if (check == 'Save') {
      await apiFetcher('Post', '/api/weekly-training', obj);
    }
    print(obj);
    if (check == 'update') {
      await apiFetcher('Put', '/api/weekly-training/${arg['id']}', obj);
    }
      Get.back();
    ac.getData();
  }
}
