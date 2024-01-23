import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class WeeklyMeetingController extends GetxController {
  dynamic refValue;
  TextEditingController amount = TextEditingController();
  TextEditingController meetingLocation = TextEditingController();
  TextEditingController notes = TextEditingController();

  RxString selectedOption = ''.obs;
  void setSelectedOption(String option) {
    selectedOption.value = option;
    update();
  }

  
}
