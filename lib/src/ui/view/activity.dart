import 'package:flutter/material.dart';
import 'package:hbb/src/controllers/activityController.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';
import 'package:hbb/src/ui/widgets/commonScaffold.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// ignore: must_be_immutable
class ActivityScreen extends StatelessWidget {
  final ActivityController _ = Get.find<ActivityController>();

  ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      color: UIDataColors.greyColor,
      bodyData: body(),
    );
  }

  Widget body() {
    return SlidingUpPanel(
      // color: Color.fromARGB(241, 255, 255, 255),
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      boxShadow: const [BoxShadow(color: Colors.white)],
      minHeight: Get.height / 4,
      maxHeight: Get.height,
      panel: Column(
        children: [
          Container(
            width: Get.width * 0.2,
            height: Get.height * 0.006,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 222, 222),
                borderRadius: BorderRadius.circular(100)),
          ).paddingOnly(top: 10),
          SizedBox(
            height: Get.height / 1.1,
            width: Get.width / 1.1,
            child: ListView.builder(
                itemCount: _.data.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        width: Get.width / 1.1,
                        decoration: const BoxDecoration(
                            // color: Color.fromARGB(255, 117, 88, 183),
                            border: Border(
                                bottom: BorderSide(
                                    color: UIDataColors.greyColor, width: 2))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon Container
                            Container(
                              width: Get.width * 0.1,
                              height: Get.height * 0.05,
                              decoration: BoxDecoration(
                                  color: Color(_.data[index]['color']),
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Icon(
                                Icons.temple_hindu_sharp,
                                color: Colors.white,
                              ),
                            ),

                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Heading Container
                                      Container(
                                        child: Text(
                                          '${_.data[index]['heading']}',
                                          style: TextStyle(
                                              fontSize: Get.width * 0.04),
                                        ),
                                      ).paddingSymmetric(
                                          vertical: Get.height * 0.01),
                                      // Date Container
                                      Container(
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.calendar_month_outlined,
                                              color: Colors.grey,
                                            ).paddingOnly(
                                                right: Get.width * 0.015),
                                            Text(
                                              '${_.data[index]['date']}',
                                              style: const TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ).paddingOnly(left: Get.width * 0.02),
                                  // Time Container
                                  // Container(
                                  //   width: 20,
                                  //   height: 20,
                                  //   color: Color.fromARGB(255, 120, 19, 65),
                                  // ),
                                ],
                              ),
                            )
                          ],
                        ).paddingSymmetric(vertical: Get.height * 0.012),
                      )
                    ],
                  );
                }),
          ).paddingOnly(top: 20)
        ],
      ),

      body: SafeArea(
        child: SizedBox(
            width: Get.width,
            child: Column(
              children: [
                Container(
                  width: Get.width / 1.1,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Activity Calendar',
                        style: TextStyle(
                          fontSize: Get.width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                        // textAlign: TextAlign.left,
                      ),
                      Row(
                        children: [
                          Obx(
                            () => Ink(
                              height: Get.height * 0.04,
                              width: Get.width * 0.13,
                              decoration: _.isCalendar.value
                                  ? const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(100),
                                              right: Radius.circular(100))),
                                      color: UIDataColors.commonColor,
                                    )
                                  : null,
                              child: IconButton(
                                  onPressed: () {
                                    _.isCalendar.value = true;
                                    _.isFormatlist.value = false;
                                  },
                                  icon: Icon(
                                    Icons.date_range_outlined,
                                    size: Get.width * 0.055,
                                    color: _.isCalendar.value
                                        ? Colors.white
                                        : Colors.grey,
                                  )),
                            ),
                          ),
                          Obx(
                            () => Ink(
                              height: Get.height * 0.04,
                              width: Get.width * 0.13,
                              decoration: _.isFormatlist.value
                                  ? const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(100),
                                              right: Radius.circular(100))),
                                      color: UIDataColors.commonColor,
                                    )
                                  : null,
                              child: IconButton(
                                  onPressed: () {
                                    _.isFormatlist.value = true;
                                    _.isCalendar.value = false;
                                  },
                                  icon: Icon(
                                    Icons.format_list_bulleted,
                                    size: Get.width * 0.055,
                                    color: _.isFormatlist.value
                                        ? Colors.white
                                        : Colors.grey,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: Get.width / 1.1,
                  height: Get.height / 2,
                  child: SfDateRangePicker(
                    view: DateRangePickerView.month,
                    // enablePastDates: false,
                    headerStyle: DateRangePickerHeaderStyle(
                      textAlign: TextAlign.left,
                      textStyle: TextStyle(
                          fontSize: Get.width * 0.05,
                          fontWeight: FontWeight.w500),
                    ),
                    headerHeight: 80,
                    selectionColor: UIDataColors.commonColor,
                    onSelectionChanged: _.onSelectionChanged,
                    selectionTextStyle: TextStyle(
                      fontSize: Get.width * 0.05,
                      fontWeight: FontWeight.w500,
                    ),
                    selectionMode: DateRangePickerSelectionMode.single,
                    // initialSelectedRange: PickerDateRange(
                    //   DateTime.now().subtract(const Duration(days: 4)),
                    //   DateTime.now().add(const Duration(days: 3)),
                    // ),
                    monthCellStyle: DateRangePickerMonthCellStyle(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: Get.width * 0.05,
                    )),
                  ),
                )
              ],
            )).paddingOnly(top: Get.height * 0.04),
      ),
    );
  }
}
