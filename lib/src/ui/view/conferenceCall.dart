import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/conferenceCallController.dart';
import 'package:hbb/src/ui/widgets/commonClasses.dart';

import '../../utils/routes/routes.dart';
import '../../utils/uidata/color.dart';

class ConferenceCallScreen extends StatelessWidget {
  final ConferenceCallController _ = Get.put(ConferenceCallController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: SafeArea(
            child: Container(
              height: Get.height,
              width: Get.width,
              // color: Colors.red,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Conference Call.    17th, 0',
                          style: TextStyle(
                              color: Colors.grey, fontSize: Get.width * .03),
                        ),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Text(
                            'Close',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.red, fontSize: Get.width * .03),
                          ),
                        )
                      ],
                    ).marginSymmetric(
                        vertical: Get.height * .02,
                        horizontal: Get.width * 0.04),

                    GoalsTextField(
                      width: Get.width / 1.09,
                      controller: _.timeofcall,
                      hintText: '',
                      readonly: false,
                      heading: "Time Of Call:",
                    ),
                    //
                    SizedBox(
                      height: Get.height * .01,
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Notes:",
                            style: TextStyle(
                                fontSize: Get.width * .025,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: TextField(
                              controller: _.notes,
                              maxLines: 5,
                              style: TextStyle(
                                fontSize: Get.width * .025,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: Get.height * .005,
                                ),
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.black),
                                // hintText: hintText,
                              ),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          )
                        ],
                      ),
                    ).paddingSymmetric(horizontal: Get.width * .02),
                    //
                    SizedBox(
                      height: Get.height * .01,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.conferenceaddexpense);
                          },
                          child: Container(
                            color: Colors.grey,
                            child: Text(
                              'Expense',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Get.width * 0.035),
                            ).marginSymmetric(
                                horizontal: Get.width * 0.04,
                                vertical: Get.height * 0.01),
                          ),
                        ),
                        Container(
                          color: UIDataColors.commonColor,
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Get.width * 0.035),
                          ).marginSymmetric(
                              horizontal: Get.width * 0.04,
                              vertical: Get.height * 0.01),
                        ).paddingSymmetric(horizontal: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ).marginSymmetric(horizontal: Get.width * 0.02),
          )),
    );
  }
}

//