// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class ActivityController extends GetxController {
  final RxString _selectedDate = ''.obs;
  final RxString _dateCount = ''.obs;
  final RxString _range = ''.obs;
  final RxString _rangeCount = ''.obs;
  RxBool isFormatlist = false.obs;
  RxBool isCalendar = true.obs;

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      _range.value =
          '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} - ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
    } else if (args.value is DateTime) {
      print(_selectedDate.value = args.value.toString());
    } else if (args.value is List<DateTime>) {
      _dateCount.value = args.value.length.toString();
    } else {
      _rangeCount.value = args.value.length.toString();
    }
  }

  List data = [
    {
      'icon': 'Icons.profile',
      'heading': 'National/International Exposure',
      'date': '02/01/2024',
      'time': 'Today',
      'color': 0xFF09721D
    },
   {
      'icon': '',
      'heading': 'Conference Call',
      'date': '29/12/2023',
      'time': '3 Days',
      'color': 0xffF2194E
    },
    {
      'icon': '',
      'heading': 'Weakly Meeting',
      'date': '29/12/2023',
      'time': '3 Days',
      'color': 0xFFF2E719
    },
  ];
 
}
