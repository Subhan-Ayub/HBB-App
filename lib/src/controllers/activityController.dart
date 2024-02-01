// ignore_for_file: depend_on_referenced_packages, unused_import, invalid_use_of_protected_member

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
  RxBool specDateCheck=false.obs;
  String? formattedDate;

  List<dynamic> checkkk = [];

  RxBool loder = true.obs;

  var data;

  CalendarFormat calendarFormat = CalendarFormat.month;
  final pfocusedDay = DateTime.now().obs;
  DateTime? pselectedDay;
  TextEditingController eventController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  getData() async {
    loder.value = true;

    data = await apiFetcher('Get', '/api/activity');
    checkkk = data['data'];
    data = checkkk;

    pselectedDay = pfocusedDay.value;
    loder.value = false;
    dcheck();
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    pselectedDay = selectedDay;
    pfocusedDay.value = focusedDay;
    dcheck();

  }


  var filteredDataOfD = [];
  var filteredidOfD = [];
  var filteredidOfW = [];
  var filteredidOfC = [];

  var dailyprintt = [].obs;
  var natinalprint = [].obs;
  var weeklyprint = [].obs;
  var conferrencedprint = [].obs;

  dcheck() async {
    filteredDataOfD = [];
    filteredidOfD = [];
    filteredidOfW = [];
    filteredidOfC = [];
    specDateCheck.value=true;

    dailyprintt.value = [];
    natinalprint.value = [];
    weeklyprint.value = [];
    conferrencedprint.value = [];
    expandDailyExposure.value = false;
    expandNationalExposure.value = false;
    expandMeetings.value = false;
    expandConference.value = false;

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


    if (filteredDataOfD.isNotEmpty) {

      for (var i = 0; i < filteredDataOfD.length; i++) {
        var dailyIds = await apiFetcher(
            'Get', '/api/daily-exposure/${filteredDataOfD[i]['id']}');
        filteredidOfD.add(dailyIds['data']);
        var conferIds = await apiFetcher(
            'Get', '/api/conference-call/${filteredDataOfD[i]['id']}');
        filteredidOfC.add(conferIds['data']);

        var weeklyIds = await apiFetcher(
            'Get', '/api/weekly-training/${filteredDataOfD[i]['id']}');
        filteredidOfW.add(weeklyIds['data']);
    
      }

      // if (filteredidOfW.isNotEmpty) {
      // weeklyprint.value = filteredidOfW;
      //   expandMeetings.value=true;
      // }
     
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
    }
     for (var i = 0; i < filteredidOfW.length; i++) {
      if (filteredidOfW[i]['activitytype'] == 2) {
        weeklyprint.value.add(filteredidOfW[i]);
        print(weeklyprint);
        print('ddddn cnd cndcnjdnckjdnckjndkjenckjednjkcnencenrefreeeeeeeeee');

        expandMeetings.value = true;
      }
    }
     for (var i = 0; i < filteredidOfC.length; i++) {
      if (filteredidOfD[i]['activitytype'] == 3) {
        conferrencedprint.value.add(filteredidOfC[i]);

        expandConference.value = true;
      }
    }


      specDateCheck.value=false;
  
  }


}
