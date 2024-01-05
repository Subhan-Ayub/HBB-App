import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';
import 'package:hbb/src/ui/widgets/commonScaffold.dart';
// import 'package:hbb/src/utils/uidata/color.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      bodyData: body(),
    );
  }

  Widget body() {
    return SlidingUpPanel(
      color: Color.fromARGB(241, 255, 255, 255),
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      minHeight: Get.height / 7,
      maxHeight: Get.height,
      panel: const Column(
        children: [
          Icon(Icons.keyboard_arrow_up_rounded, size: 40, color: Colors.grey),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.grey,
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  child: Icon(
                    Icons.chevron_left,
                    color: Color.fromARGB(255, 255, 255, 255),
                    size: 40,
                  ),
                  onTap: () => Get.back(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                      size: 14,
                    ).marginOnly(right: 5),
                    Text(
                      'End-to-end Encrypted',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ).marginOnly(left: 100)
              ],
            ).marginOnly(top: 50),
            Text(
              'name',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
