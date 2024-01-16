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
                // height: Get.height * .15,
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
                                width: 0,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                                width: 0,
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
                          width: Get.width / 4,
                          height: Get.height * .03,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            // color: Colors.black,
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 0,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                                width: 0,
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
                          width: Get.width / 2.46,
                          height: Get.height * .03,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            // color: Colors.black,
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 0,
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
                      color: Colors.grey.shade100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width / 4,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'Frantz Brillant',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 4,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              '(973)698-5970',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 2.46,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'rivatrips@gmail.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),

                          //
                        ],
                      ),
                    ),
                    //
                    Container(
                      color: Colors.yellow.shade100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width / 4,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'Larry Christian',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 4,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              '(732) 336-0291',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 2.46,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'sixfigurechristian@gmail.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),

                          //
                        ],
                      ),
                    ),
                    //
                    Container(
                      color: Colors.grey.shade100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width / 4,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'Jaime Enbry',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 4,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              '(732) 586-9931',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 2.46,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'bailsrusii@gmail.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),

                          //
                        ],
                      ),
                    ),
                    //
                    Container(
                      color: Colors.yellow.shade100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width / 4,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'Gina Philp',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 4,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              '(412) 763-2323',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),
                          //
                          Container(
                            width: Get.width / 2.46,
                            height: Get.height * .03,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              // color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                            ),
                            child: Text(
                              'gina.e.philp@gmail.com',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: Get.width * .02),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          ),

                          //
                        ],
                      ),
                    ),

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
                  ).marginSymmetric(vertical: Get.height * .02),
                ],
              ),
            ],
          ),
        ),
      )
          .paddingSymmetric(vertical: Get.height * 0.01)
          .marginSymmetric(horizontal: Get.height * 0.02),
    );
  }
}
