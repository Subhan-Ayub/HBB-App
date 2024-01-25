// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/incomeExpenseController.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import 'package:hbb/src/utils/uidata/color.dart';

class IncomeExpenseScreen extends StatelessWidget {
  final IncomeExpenseController _ = Get.put(IncomeExpenseController());

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
                "My Income And Expense",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: Get.width * .06, fontWeight: FontWeight.bold),
              ).marginOnly(top: Get.height * .04),
              Row(
                children: [
                  Stack(
                    children: [
                      // Container with content
                      Container(
                        width: Get.width / 2.25,
                        height: Get.height * .03,
                        decoration: BoxDecoration(
                            color: UIDataColors.greyColor,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            )),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_left_outlined),
                            Text(
                              'January 2024',
                              style: TextStyle(
                                fontSize: Get.width * .025,
                                color: Colors.black,
                              ),
                            ).marginSymmetric(horizontal: Get.width * .05),
                          ],
                        ).paddingSymmetric(horizontal: Get.width * .001),
                      ),
                      // Inner shadow
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: Get.width,
                          height: Get.height * .002,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 10,
                                blurRadius: 5,
                                offset: Offset(10, 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ).marginSymmetric(vertical: Get.height * .02),
              //

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
                          width: Get.width / 6.342,
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
                            'Purpose',
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
                                width: 1.0,
                              ),
                              right: BorderSide(
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
                            ),
                          ),
                          child: Text(
                            'Expense',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Get.width * .025),
                          ),
                        ),
                      ],
                    ),
                    //
                    Obx(
                      () => _.loader.value
                          ? Container(
                              height: Get.height * .09,
                              alignment: Alignment.center,
                              child: ListView.builder(
                                  itemCount: 1,
                                  itemBuilder: ((context, index) {
                                    return Row(
                                      children: [
                                        Container(
                                          width: Get.width / 6.342,
                                          height: Get.height * .03,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
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
                                            '${_.incomeExpenseData['expensedate']}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: Get.width * .025),
                                            overflow: TextOverflow.ellipsis,
                                          ).paddingSymmetric(horizontal: 10),
                                        ),
                                        Container(
                                          width: Get.width / 4,
                                          height: Get.height * .03,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
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
                                            '${_.incomeExpenseData['expensereason']}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: Get.width * .025),
                                            overflow: TextOverflow.ellipsis,
                                          ).paddingSymmetric(horizontal: 10),
                                        ),
                                        Container(
                                          width: Get.width / 4,
                                          height: Get.height * .03,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
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
                                            '',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: Get.width * .025),
                                          ),
                                        ),
                                        Container(
                                          width: Get.width / 4,
                                          height: Get.height * .03,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            '${_.incomeExpenseData['expenseamount']}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: Get.width * .025),
                                          ),
                                        ),
                                      ],
                                    );
                                  })))
                          : Center(
                              child: CircularProgressIndicator(),
                            ),
                    )
                    // .marginSymmetric(vertical: Get.height * .03)
                    // Text(
                    //     'You currently have no income or expense items for January 2024,(Remember you can only display income and expenses back to January 1st of the year you joined this program) ',
                    //     style: TextStyle(
                    //       fontSize: Get.width * .025,
                    //     ),
                    //     textAlign: TextAlign.center,
                    //   ),
                  ],
                ),
              ),

              Row(
                children: [
                  Stack(
                    children: [
                      // Container with content
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.addincomeexpense);
                          print('object');
                        },
                        child: Container(
                          width: Get.width / 2.25,
                          height: Get.height * .03,
                          decoration: BoxDecoration(
                              color: UIDataColors.greyColor,
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              )),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_comment_rounded,
                                size: Get.width * .04,
                              ),
                              Text(
                                'Add Inome and Expense',
                                style: TextStyle(
                                  fontSize: Get.width * .025,
                                  color: Colors.black,
                                ),
                              ).marginSymmetric(horizontal: Get.width * .02),
                            ],
                          ).paddingSymmetric(horizontal: Get.width * .01),
                        ),
                      ),
                      // Inner shadow
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: Get.width,
                          height: Get.height * .002,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 10,
                                blurRadius: 5,
                                offset: Offset(10, 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    width: Get.width / 1 / 4,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Close',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.red, fontSize: Get.width * .035),
                      ),
                    ),
                  ),
                ],
              ).marginSymmetric(vertical: Get.height * .02),
            ],
          ),
        ),
      )
          .paddingSymmetric(vertical: Get.height * 0.01)
          .marginSymmetric(horizontal: Get.height * 0.02),
    );
  }
}
