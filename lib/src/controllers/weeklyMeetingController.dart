import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/activityController.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

class WeeklyMeetingController extends GetxController {
  ActivityController ac = Get.find<ActivityController>();

  dynamic refValue;
  TextEditingController amount = TextEditingController();
  TextEditingController meetingLocation = TextEditingController();
  TextEditingController notes = TextEditingController();
  var formattedDate;
  var arg = Get.arguments;
  @override
  void onInit() async {
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

  submit() async{
    var obj = {
      "activitytype": "2",
      "origdate": formattedDate,
      "meetinglocation": meetingLocation.text,
      "wmnotes": notes.text,
      "meetingtype": selectedOption.value
    };
       await apiFetcher('Post', '/api/weekly-training', obj);
    Get.back();
    ac.getData();
  }
}
