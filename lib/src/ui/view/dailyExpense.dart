import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/DailyExpenseController.dart';
import 'package:hbb/src/ui/widgets/commonClasses.dart';
import 'package:hbb/src/utils/routes/routes.dart';

class DailyExpenseScreen extends StatelessWidget {
  final DailyExpenseController _ = Get.put(DailyExpenseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            // height: Get.height,
            width: Get.width,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Daily Exposures.    17th, 0',
                      style: TextStyle(
                          color: Colors.grey, fontSize: Get.width * .03),
                    ),
                    InkWell(
                      onTap: () {
                        Get.offAndToNamed(Routes.home);
                      },
                      child: Text(
                        'Close',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Colors.red, fontSize: Get.width * .03),
                      ),
                    ).marginSymmetric(vertical: Get.height * .01),
                  ],
                ),

                SizedBox(
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Prospect's Name:",
                        style: TextStyle(
                          fontSize: Get.width * .045,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Container(
                        height: Get.height * .04,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: Get.width * .025,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: Get.height * .015,
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black),
                            // hintText: hintText,
                          ),
                        ).paddingSymmetric(horizontal: Get.width * .01),
                      )
                    ],
                  ),
                ),
                //
                SizedBox(
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone Number:",
                        style: TextStyle(
                          fontSize: Get.width * .045,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Container(
                        height: Get.height * .04,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: Get.width * .025,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: Get.height * .015,
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black),
                            // hintText: hintText,
                          ),
                        ).paddingSymmetric(horizontal: Get.width * .01),
                      )
                    ],
                  ),
                ),
                //
                SizedBox(
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CellPhone Number:",
                        style: TextStyle(
                          fontSize: Get.width * .045,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Container(
                        height: Get.height * .04,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: Get.width * .025,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: Get.height * .015,
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black),
                            // hintText: hintText,
                          ),
                        ).paddingSymmetric(horizontal: Get.width * .01),
                      )
                    ],
                  ),
                ),
                //
                SizedBox(
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email Address:",
                        style: TextStyle(
                          fontSize: Get.width * .045,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Container(
                        height: Get.height * .04,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontSize: Get.width * .025,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: Get.height * .015,
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black),
                            // hintText: hintText,
                          ),
                        ).paddingSymmetric(horizontal: Get.width * .01),
                      )
                    ],
                  ),
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      // width: Get.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "City:",
                            style: TextStyle(
                              fontSize: Get.width * .045,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Container(
                            width: Get.width * .4,
                            height: Get.height * .04,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: TextField(
                              style: TextStyle(
                                fontSize: Get.width * .025,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  bottom: Get.height * .015,
                                ),
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.black),
                                // hintText: hintText,
                              ),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          )
                        ],
                      ),
                    ),
                    //
                    SizedBox(
                      // width: Get.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "State:",
                            style: TextStyle(
                              fontSize: Get.width * .045,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Container(
                            width: Get.width * .2,
                            height: Get.height * .04,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: TextField(
                              style: TextStyle(
                                fontSize: Get.width * .025,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  bottom: Get.height * .015,
                                ),
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.black),
                                // hintText: hintText,
                              ),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          )
                        ],
                      ),
                    ),
                    //
                    SizedBox(
                      // width: Get.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zip:",
                            style: TextStyle(
                              fontSize: Get.width * .045,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Container(
                            width: Get.width * .2,
                            height: Get.height * .04,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: TextField(
                              style: TextStyle(
                                fontSize: Get.width * .025,
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                  bottom: Get.height * .015,
                                ),
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.black),
                                // hintText: hintText,
                              ),
                            ).paddingSymmetric(horizontal: Get.width * .01),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  // width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "State:",
                        style: TextStyle(
                          fontSize: Get.width * .045,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Container(
                        // width: Get.width * .25,
                        // height: Get.height * .04,

                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: TextField(
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: Get.width * .025,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              bottom: Get.height * .015,
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black),
                            // hintText: hintText,
                          ),
                        ).paddingSymmetric(horizontal: Get.width * .01),
                      )
                    ],
                  ),
                ),
// Container(
//   width: ,
// )

                GoalsTextField(
                  width: Get.width,
                  controller: _.income30days,
                  hintText: '',
                  readonly: false,
                  heading: 'Next 30 days:',
                ),
              ],
            ),
          ),
        )
            .paddingSymmetric(vertical: Get.height * 0.01)
            .marginSymmetric(horizontal: Get.height * 0.03),
      ),
    );
  }
}

// static const dailyexpense = '/dailyexpense';

// GetPage(
//         name: Routes.dailyexpense,
//         binding: DailyExpenseBinding(),
//         page: () => DailyExpenseScreen(),
//         transition: Transition.noTransition),
