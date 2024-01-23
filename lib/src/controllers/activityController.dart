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
  String? formattedDate;

  List<dynamic> checkkk = [];

  RxBool loder = true.obs;

  var data;

  CalendarFormat calendarFormat = CalendarFormat.month;
  final pfocusedDay = DateTime.now().obs;
  DateTime? pselectedDay;
  TextEditingController eventController = TextEditingController();

  @override
  void onInit() async {
    super.onInit();
    data = await apiFetcher('Get', '/api/activity');
    checkkk = data['data'];
    data = checkkk;

    pselectedDay = pfocusedDay.value;
    loder.value = false;
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    pselectedDay = selectedDay;
    pfocusedDay.value = focusedDay;
    dcheck();
    // getEventsForDay(selectedDay);
  }

  // getEventsForDay(DateTime day) {
  //   DateTime dateTime = DateTime.parse(day.toString());

  //   dateTime = dateTime.toLocal();

  //   String formattedDate =
  //       "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";
  //
  // }

  var filteredDataOfD = [];
  var filteredidOfD = [];

  var dailyprintt = [].obs;
  var natinalprint = [].obs;


  dcheck() async {
    filteredDataOfD = [];
    filteredidOfD = [];
    dailyprintt.value = [];
    natinalprint.value=[];
    expandDailyExposure.value = false;
    expandNationalExposure.value=false;
    print(data);
    DateTime dateTime = DateTime.parse(pselectedDay.toString());

    dateTime = dateTime.toLocal();

    formattedDate =
        "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";

    for (var i = 0; i < data.length; i++) {
      if (data[i]['origdate'] == formattedDate) {
        filteredDataOfD.add(
            {'id': data[i]['id'], 'members_id': data[i]['members_idmembers']});
      }
    }

    // print(filteredDataOfD);

    for (var i = 0; i < filteredDataOfD.length; i++) {
      var ids = await apiFetcher(
          'Get', '/api/daily-exposure/${filteredDataOfD[i]['id']}');
      filteredidOfD.add(ids['data']);
    }
    // print(filteredidOfD);

    for (var i = 0; i < filteredidOfD.length; i++) {
      if (filteredidOfD[i]['activitytype'] == 1) {
        dailyprintt.value.add(filteredidOfD[i]);

        expandDailyExposure.value = true;
      }
    }
     for (var i = 0; i < filteredidOfD.length; i++) {
      if (filteredidOfD[i]['activitytype'] == 4) {
        natinalprint.value.add(filteredidOfD[i]);

        expandNationalExposure.value = true;
      }
    }
    print('eeeeee ${natinalprint.length}');
    // if (dailyprintt != []) {
    //   print('ddddd');
    // }
  }

  dailyprint() {}
}
