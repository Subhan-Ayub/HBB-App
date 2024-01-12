import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/statistics&reportsController.dart';
// import 'package:hbb/src/ui/widgets/commonScaffold.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// ignore: must_be_immutable
class StatisticsAndReports extends StatelessWidget {
  StatisticsAndReports({super.key});

  RxBool isFormatlist = false.obs;
  RxBool isCalendar = false.obs;

  @override
  Widget build(BuildContext context) {
    StatisticsAndReportsController _ =
        Get.find<StatisticsAndReportsController>();
    return Scaffold(
     backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // width: Get.width / 1.1,
                  // alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Statistics and Reports',
                        style: TextStyle(
                          fontSize: Get.width * 0.06,
                          fontWeight: FontWeight.bold,
                        ),
                        // textAlign: TextAlign.left,
                      ),
                      Row(
                        children: [
                          Obx(
                            () => Ink(
                              height: Get.height * 0.045,
                              width: Get.width * 0.13,
                              decoration: isFormatlist.value
                                  ? const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(100),
                                              right: Radius.circular(100))),
                                      color: UIDataColors.commonColor,
                                    )
                                  : const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(90),
                                              right: Radius.circular(90))),
                                      color: Color.fromARGB(255, 237, 237, 237),
                                    ),
                              child: IconButton(
                                  onPressed: () {
                                    isFormatlist.value = true;
                                    isCalendar.value = false;
                                  },
                                  icon: Icon(
                                    Icons.format_list_bulleted,
                                    size: Get.width * 0.06,
                                    color: isFormatlist.value
                                        ? Colors.white
                                        : Colors.grey,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ).marginOnly(top: 30),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('All Reports'),
                        Icon(Icons.keyboard_arrow_down_sharp),
                        Spacer(),
                        Text('Months')
                      ],
                    )
                        .marginSymmetric(horizontal: Get.width * 0.03)
                        .marginOnly(top: 45, bottom: 10),
                    Container(
                      height: 200,
                      child: SfCartesianChart(
                          primaryXAxis: CategoryAxis(),
                          primaryYAxis:
                              NumericAxis(minimum: 0, maximum: 100, interval: 10),
                          tooltipBehavior: _.tooltip,
                          series: <CartesianSeries<ChartData, String>>[
                            ColumnSeries<ChartData, String>(
                                dataSource: _.data,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y,
                                name: 'Exposures',
                                // yAxisName: 'lll',
                                color: Color.fromRGBO(0, 135, 36, 1)),
                            ColumnSeries<ChartData, String>(
                                dataSource: _.data,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.z,
                                name: 'Sign-Ups',
                                // yAxisName: 'lll',
                                color: Color.fromRGBO(0, 161, 186, 1)),
                          ]),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2), // Shadow color
                            offset: Offset(
                              -10,
                              12,
                            ), // Horizontal and vertical offset
                            blurRadius: 20, // Blur radius
                            spreadRadius: 2.0, // Spread radius (optional)
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 160,
                            child: SfCircularChart(
                                annotations: <CircularChartAnnotation>[
                                  CircularChartAnnotation(
                                    // position: Offset(0, 0), // Position at the center of the chart
                                    widget: Container(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: EdgeInsets.all(9),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Text(
                                          '20', // Label to display
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ), // Center the label within the container
                                    ),
                                  )
                                ],
                                series: <CircularSeries>[
                                  // Renders radial bar chart
                                  RadialBarSeries<SignUpData, String>(
                                      radius: '125%',
                                      innerRadius: '60%',
                                      trackBorderWidth: 1,
                                      gap: '25%',
                                      maximumValue: 100,
                                      trackColor: Color.fromARGB(0, 255, 255, 255),
                                      cornerStyle: CornerStyle.endCurve,
                                      dataSource: _.signUp,
                                      pointColorMapper: (SignUpData data, _) =>
                                          data.y > 5
                                              ? Color.fromRGBO(0, 161, 186, 1)
                                              : Color.fromRGBO(0, 135, 36, 1),
                                      xValueMapper: (SignUpData data, _) => data.x,
                                      yValueMapper: (SignUpData data, _) => data.y),
                                ]),
                          ),
                          Text(
                            'Sign-ups',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.amber,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2), // Shadow color
                            offset: Offset(
                              -10,
                              12,
                            ), // Horizontal and vertical offset
                            blurRadius: 20, // Blur radius
                            spreadRadius: 2.0, // Spread radius (optional)
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 160,
                            // color: Colors.amber,
                            child: SfCircularChart(
                                annotations: <CircularChartAnnotation>[
                                  CircularChartAnnotation(
                                    // position: Offset(0, 0), // Position at the center of the chart
                                    widget: Container(
                                      alignment: Alignment.center,
                                      child: Container(
                                        padding: EdgeInsets.all(9),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Text(
                                          '85', // Label to display
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ), // Center the label within the container
                                    ),
                                  )
                                ],
                                series: <CircularSeries>[
                                  // Renders radial bar chart
                                  RadialBarSeries<ExposureData, String>(
                                      radius: '125%',
                                      innerRadius: '60%',
                                      trackBorderWidth: 1,
                                      gap: '25%',
                                      maximumValue: 100,
                                      trackColor: Color.fromARGB(0, 255, 255, 255),
                                      cornerStyle: CornerStyle.endCurve,
                                      dataSource: _.exposure,
                                      pointColorMapper: (ExposureData data, _) =>
                                          data.y > 5
                                              ? Color.fromRGBO(0, 135, 36, 1)
                                              : Color.fromRGBO(0, 161, 186, 1),
                                      xValueMapper: (ExposureData data, _) =>
                                          data.x,
                                      yValueMapper: (ExposureData data, _) =>
                                          data.y),
                                ]),
                          ),
                          Text(
                            'Exposures',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          ' Reports',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text('Months'),
                        Icon(Icons.arrow_drop_down_rounded),
                      ],
                    ).marginOnly(top: 40),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Name',
                          style:
                              TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text('Total Number',
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold))
                            .marginOnly(left: 40),
                        Text('Total Percentage',
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold))
                            .marginOnly(right: 80),
                      ],
                    ).marginOnly(top: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Daily Exposure',
                          style:
                              TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                        ),
                        Text('\$750.000',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.w500)),
                        Text('\$750.000',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.w500)),
                        Text('Show reports',
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold)),
                      ],
                    ).marginOnly(top: 20),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Conference Calls',
                          style:
                              TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                        ),
                        Text('\$750.000',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.w500)),
                        Text('\$750.000',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.w500)),
                        Text('Show reports',
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold)),
                      ],
                    ).marginOnly(top: 30),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Weekly Meetings',
                          style:
                              TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                        ),
                        Text('\$750.000',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.w500)),
                        Text('\$750.000',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.w500)),
                        Text('Show reports',
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold)),
                      ],
                    ).marginOnly(top: 30),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'international Exposure',
                          style:
                              TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                        ),
                        Text('\$750.000',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.w500)),
                        Text('\$750.000',
                            style: TextStyle(
                                fontSize: 9, fontWeight: FontWeight.w500)),
                        Text('Show reports',
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.bold)),
                      ],
                    ).marginOnly(top: 30)
                  ],
                ).marginSymmetric(horizontal: 13)
              ],
            ).paddingSymmetric(horizontal: Get.width * 0.03),
          ),
        ));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.z);

  final String x;
  final double y;
  final double z;
}

class SignUpData {
  SignUpData(this.x, this.y);

  final String x;
  final double y;
}

class ExposureData {
  ExposureData(
    this.x,
    this.y,
  );

  final String x;
  final double y;
}
