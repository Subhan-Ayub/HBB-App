import 'package:flutter/material.dart';
import 'package:hbb/src/controllers/activityController.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';
import 'package:hbb/src/ui/widgets/commonScaffold.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// ignore: must_be_immutable
class ActivityScreen extends StatelessWidget {
  ActivityController _ = Get.find<ActivityController>();

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
                  child: Text(
                    'My Activity Calendar',
                    style: TextStyle(
                      fontSize: Get.width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                    // textAlign: TextAlign.left,
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
