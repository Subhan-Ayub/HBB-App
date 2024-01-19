// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../ui/view/activity.dart';

class ActivityController extends GetxController {
  // final RxString _selectedDate = ''.obs;
  // final RxString _dateCount = ''.obs;
  // final RxString _range = ''.obs;
  // final RxString _rangeCount = ''.obs;
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

  // void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
  //   if (args.value is PickerDateRange) {
  //     _range.value =
  //         '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} - ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
  //   } else if (args.value is DateTime) {
  //     print(_selectedDate.value = args.value.toString());
  //   } else if (args.value is List<DateTime>) {
  //     _dateCount.value = args.value.length.toString();
  //   } else {
  //     _rangeCount.value = args.value.length.toString();
  //   }
  // }

  // List data = [
  //   {
  //     'icon': 'Icons.profile',
  //     'heading': 'National/International Exposure',
  //     'date': '02/01/2024',
  //     'time': 'Today',
  //     'color': 0xFF09721D
  //   },
  //   {
  //     'icon': '',
  //     'heading': 'Conference Call',
  //     'date': '29/12/2023',
  //     'time': '3 Days',
  //     'color': 0xffF2194E
  //   },
  //   {
  //     'icon': '',
  //     'heading': 'Weakly Meeting',
  //     'date': '29/12/2023',
  //     'time': '3 Days',
  //     'color': 0xFFF2E719
  //   },
  // ];

  CalendarFormat calendarFormat = CalendarFormat.month;
  final pfocusedDay = DateTime.now().obs;
  DateTime? pselectedDay;
  Map<DateTime, List<Event>> events = {};
  TextEditingController eventController = TextEditingController();
  late final ValueNotifier<List<Event>> selectedEvents;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pselectedDay = pfocusedDay.value;
    selectedEvents = ValueNotifier(getEventsForDay(pselectedDay!));
  }

  @override
  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    // if (!isSameDay(selectedDay, selectedDay)) {
    pselectedDay = selectedDay;
    pfocusedDay.value = focusedDay;
    selectedEvents.value = getEventsForDay(selectedDay);
    print('selectedDay: ${pselectedDay}');
    print('focusedDay: ${pfocusedDay}');
    print('selectedEvents: ${selectedEvents}');

    // }
  }

  List<Event> getEventsForDay(DateTime day) {
    return events[day] ?? [];
  }
}
