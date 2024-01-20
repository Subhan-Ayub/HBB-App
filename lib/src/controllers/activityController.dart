// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

import 'package:table_calendar/table_calendar.dart';

import '../ui/view/activity.dart';

class ActivityController extends GetxController {
 
  RxBool isFormatlist = false.obs;
  RxBool isCalendar = true.obs;
  RxBool expandDailyExposure = false.obs;
  RxDouble dailyExposureHeight = 0.0.obs;
  RxBool expandMeetings = false.obs;
  RxDouble meetingsHeight = 0.0.obs;
  RxBool expandConference = false.obs;
  RxDouble conferenceHeight = 0.0.obs;
  RxBool expandNationalExposure = false.obs;
  RxDouble nationalExposureHeight = 0.0.obs;

  List<dynamic> checkkk = [
   
  ];

RxBool loder = true.obs;

 

  CalendarFormat calendarFormat = CalendarFormat.month;
  final pfocusedDay = DateTime.now().obs;
  DateTime? pselectedDay;
  TextEditingController eventController = TextEditingController();


  @override
  void onInit()async {
    super.onInit();
   var data=await apiFetcher('Get', '/api/activity');
   checkkk=data['data'];

    pselectedDay = pfocusedDay.value;
    loder.value=false;
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    pselectedDay = selectedDay;
    pfocusedDay.value = focusedDay;
    getEventsForDay(selectedDay);
  
  }

  getEventsForDay(DateTime day) {
    DateTime dateTime = DateTime.parse(day.toString());

    dateTime = dateTime.toLocal();


    String formattedDate =
        "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

 
  }
}
