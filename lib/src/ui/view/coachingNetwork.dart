// ignore_for_file: unused_field
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/coachNetworkController.dart';
import 'package:hbb/src/utils/routes/routes.dart';

class CoachNetworkScreen extends StatelessWidget {
  final CoachNetworkController _ = Get.put(CoachNetworkController());

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
                "Coaching Network",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: Get.width * .06, fontWeight: FontWeight.bold),
              ).marginOnly(top: Get.height * .04),
              Text(
                "This is a list of all the people in your Coaching Network. As their Coach you have access to view their calendar page, for the purpose of seeing any areas they may need help and guidance with. You can access it directly by clicking the calendar icon against their name on this page.",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: Get.width * .032, fontWeight: FontWeight.w500),
              ).marginSymmetric(vertical: Get.height * .02),
              Container(
                width: Get.width,
                height: Get.height * .15,
                decoration: BoxDecoration(
                  // color: Colors.black,
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: Get.width / 4,
                          height: Get.height * .03,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            // color: Colors.black,
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Text(
                            'Date',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Get.width * .025),
                          ),
                        ),
                        //
                        Container(
                          width: Get.width / 3.4,
                          height: Get.height * .03,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            // color: Colors.black,
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Text(
                            'Purpose',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Get.width * .025),
                          ),
                        ),
                        //
                        Container(
                          width: Get.width / 3.13,
                          height: Get.height * .03,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            // color: Colors.black,
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Text(
                            'Income',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Get.width * .025),
                          ),
                        ),

                        //
                      ],
                    ),
                    //
                    Container(
                      height: Get.height * .09,
                      alignment: Alignment.center,
                      // color: Colors.red,
                      child: Text(
                        'You currently have no income or expense items for January 2024,(Remember you can only display income and expenses back to January 1st of the year you joined this program) ',
                        style: TextStyle(
                          fontSize: Get.width * .025,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ).paddingSymmetric(vertical: Get.height * .01)
                    // .marginSymmetric(vertical: Get.height * .03)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: Get.width / 1 / 4,
                    child: GestureDetector(
                      onTap: () {
                        Get.offAndToNamed(Routes.programdata);
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
            ],
          ),
        ),
      )
          .paddingSymmetric(vertical: Get.height * 0.01)
          .marginSymmetric(horizontal: Get.height * 0.03),
    );
  }
}
