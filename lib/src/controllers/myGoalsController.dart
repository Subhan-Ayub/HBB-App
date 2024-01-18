import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGoalsController extends GetxController {
  TextEditingController days = TextEditingController();
  TextEditingController income30days = TextEditingController();
  TextEditingController income6months = TextEditingController();
  TextEditingController income1year = TextEditingController();
  TextEditingController hourdays = TextEditingController();
  TextEditingController hourweek = TextEditingController();
  TextEditingController hourmonth = TextEditingController();
  TextEditingController exposureday = TextEditingController();
  TextEditingController exposureweek = TextEditingController();
  TextEditingController exposuremonth = TextEditingController();
  TextEditingController customerweek = TextEditingController();
  TextEditingController customermonth = TextEditingController();
  TextEditingController rankpos1 = TextEditingController();
  TextEditingController rankpos2 = TextEditingController();
  TextEditingController rankpos3 = TextEditingController();

  RxBool incomeEdit = false.obs;
}
