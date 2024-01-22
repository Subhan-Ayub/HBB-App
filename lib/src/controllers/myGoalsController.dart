import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

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
  TextEditingController sponsorsweek = TextEditingController();
  TextEditingController sponsorsmonth = TextEditingController();
  TextEditingController rankpos1 = TextEditingController();
  TextEditingController rankpos2 = TextEditingController();
  TextEditingController rankpos3 = TextEditingController();

  RxBool incomeEdit = false.obs;
  RxBool hoursEdit = false.obs;
  RxBool esposureEdit = false.obs;
  RxBool customersEdit = false.obs;
  RxBool sponsorEdit = false.obs;
  RxBool pos1Edit = false.obs;
  RxBool pos2Edit = false.obs;
  RxBool pos3Edit = false.obs;

  RxBool loader = false.obs;

  @override
  void onInit() async {
    var goals = await apiFetcher('Get', '/api/my-goal');
    why = goals['data']['why'];
    timeday = goals['data']['timeday'];
    timeweek = goals['data']['timeweek'];
    timemonth = goals['data']['timemonth'];
    exposuresday = goals['data']['exposuresday'];
    exposuresweek = goals['data']['exposuresweek'];
    exposuresmonth = goals['data']['exposuresmonth'];
    membershipsweek = goals['data']['membershipsweek'];
    membershipsmonth = goals['data']['membershipsmonth'];
    sponsorweek = goals['data']['sponsorweek'];
    sponsormonth = goals['data']['sponsormonth'];

    var incomeChart = await apiFetcher('Get', '/api/my-goal/income-chart');
    income1m = incomeChart['data']['income1m'];
    income6m = incomeChart['data']['income6m'];
    income1y = incomeChart['data']['income1y'];
    actualIncome1m = incomeChart['data']['actualIncome1m'];
    actualIncome6m = incomeChart['data']['actualIncome6m'];
    actualIncome12m = incomeChart['data']['actualIncome12m'];

    var goalPosition = await apiFetcher('Get', '/api/my-goal/position');
    rankPos1 = goalPosition[2]['ultype'];
    rankPos2 = goalPosition[1]['ultype'];
    rankPos3 = goalPosition[0]['ultype'];
    posName1 = goalPosition[2]['name'];
    posName2 = goalPosition[1]['name'];
    posName3 = goalPosition[0]['name'];

    loader.value = true;
    super.onInit();
  }

  var why;
  var income1m;
  var income6m;
  var income1y;
  var actualIncome1m;
  var actualIncome6m;
  var actualIncome12m;
  var timeday;
  var timeweek;
  var timemonth;
  var exposuresday;
  var exposuresweek;
  var exposuresmonth;
  var membershipsweek;
  var membershipsmonth;
  var sponsorweek;
  var sponsormonth;
  var posName1;
  var posName2;
  var posName3;
  var rankPos1;
  var rankPos2;
  var rankPos3;
}
