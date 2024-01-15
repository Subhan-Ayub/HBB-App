// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/programDataController.dart';
import 'package:hbb/src/utils/routes/routes.dart';

class ProgramDataScreen extends StatelessWidget {
  final ProgramDataController _ = Get.put(ProgramDataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          // color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Program Data",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: Get.width * .06, fontWeight: FontWeight.bold),
              ).marginOnly(top: Get.height * .04),
              Text(
                "Check and update your Program Goals, your Support Team and your Contact List. You Can Even initiate a Daily Exposure to someone on your Contacts List:",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: Get.width * .032, fontWeight: FontWeight.w500),
              ).marginSymmetric(vertical: Get.height * .02),

              Text(
                "\u2022 My Contact List ",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: Get.width * .035,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),

              Text(
                "\u2022 My Coaching Network",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: Get.width * .035,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ).marginSymmetric(vertical: Get.height * .01),

              Text(
                "\u2022 My Goals ",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: Get.width * .035,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              ),

              InkWell(
                onTap: () {
                  Get.toNamed(Routes.incomeexpense);
                },
                child: Text(
                  "\u2022 My Incomes and Expenses",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: Get.width * .035,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ).marginSymmetric(vertical: Get.height * .01),
              ),

              InkWell(
                onTap: () {
                  Get.toNamed(Routes.supportteam);
                },
                child: Text(
                  "\u2022 My Support Team",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: Get.width * .035,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: Get.width / 1 / 4,
                    child: GestureDetector(
                      onTap: () {
                        Get.offAndToNamed(Routes.profile);
                      },
                      child: Text(
                        'Close',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.red, fontSize: Get.width * .035),
                      ),
                    ),
                  ).marginSymmetric(vertical: Get.height * .04),
                ],
              ),

              // InkWell(
              //   onTap: () {
              //     Get.defaultDialog(
              //       title: 'Log Out',
              //       content: Text('Are you sure u want to log out?'),
              //       actions: [
              //         TextButton(
              //           onPressed: () {
              //             Get.back();
              //           },
              //           child: Text('Cancel'),
              //         ),
              //         TextButton(
              //           onPressed: () async {
              //             Get.offAllNamed(Routes.login);
              //           },
              //           child: Text('Log out'),
              //         ),
              //       ],
              //     );
              //   },
              //   child: SizedBox(
              //     height: Get.height * .08,
              //     child: Row(
              //       children: [
              //         Container(
              //           height: Get.height / 9,
              //           width: Get.width / 9,
              //           decoration: BoxDecoration(
              //             color: Colors.red,
              //             shape: BoxShape.circle,
              //           ),
              //           child: Icon(
              //             Icons.logout,
              //             color: Colors.white,
              //             size: Get.width * 0.06,
              //           ),
              //         ),
              //         Text(
              //           'Logout',
              //           textAlign: TextAlign.start,
              //           style: TextStyle(
              //             fontSize: Get.width * .035,
              //           ),
              //         ).marginSymmetric(horizontal: Get.width * .02),
              //       ],
              //     ),
              //   ),
              // ),

              // \u2022
            ],
          ),
        ),
      )
          .paddingSymmetric(vertical: Get.height * 0.01)
          .marginSymmetric(horizontal: Get.height * 0.03),
    );
  }
}