import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/statistics&reportsController.dart';
import 'package:hbb/src/ui/widgets/commonScaffold.dart';
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
    return CommonScaffold(
        color: Colors.white,
        bodyData: Column(
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
                  children: [Text('data'), Text('data')],
                )
                    .marginSymmetric(horizontal: Get.width * 0.03)
                    .marginOnly(top: 45),
                SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis:
                        NumericAxis(minimum: 0, maximum: 40, interval: 10),
                    tooltipBehavior: _.tooltip,
                    series: <CartesianSeries<ChartData, String>>[
                      ColumnSeries<ChartData, String>(
                          dataSource: _.data,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          name: 'Gold',
                          // yAxisName: 'lll',
                          color: Color.fromRGBO(0, 135, 36, 1)),
                            ColumnSeries<ChartData, String>(
                          dataSource: _.data,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.z,
                          name: 'Gold',
                          // yAxisName: 'lll',
                          color: Color.fromRGBO(0, 161, 186, 1)),
                    ])
              ],
            )
          ],
        ).paddingSymmetric(horizontal: Get.width * 0.03));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.z);

  final String x;
  final double y;
  final double z;
}
