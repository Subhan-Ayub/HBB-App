import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/programDetailController.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:hbb/src/utils/uidata/text_styles.dart';

class ProgramDetailScreen extends StatelessWidget {
  final ProgramDetailController _ = Get.put(ProgramDetailController());

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
                "Program Details",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: Get.width * .06, fontWeight: FontWeight.bold),
              ).marginOnly(top: Get.height * .04),
              Divider(
                color: Colors.grey,
              ).marginSymmetric(vertical: Get.height * .015),
              //
              Container(
                color: UIDataColors.greyColor,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.red,
                        width: Get.width / 1 / 4,
                        child: Text("Member Since",
                            style: UIDataTextStyles.commontext),
                      ),
                      SizedBox(
                        width: Get.width / 1 / 3,
                        child: Text("November 11th, 2019 ",
                            textAlign: TextAlign.center,
                            style: UIDataTextStyles.commontext),
                      ),
                      SizedBox(
                        width: Get.width / 1 / 4,
                        child: GestureDetector(
                          onTap: () {
                            print("ok");
                          },
                          child: Text(
                            'edit',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.red, fontSize: Get.width * .027),
                          ),
                        ),
                      ),
                    ]).paddingSymmetric(
                    vertical: Get.height * .025, horizontal: Get.width * .01),
              ),
              //
              Container(
                child: Row(children: [
                  SizedBox(
                    width: Get.width / 1 / 2,
                    child: Text(
                      "Coach Details:",
                      style: TextStyle(
                          fontSize: Get.width * .03,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ]).paddingSymmetric(
                    horizontal: Get.width * .015, vertical: Get.height * .015),
              ),
              //
              Container(
                color: UIDataColors.greyColor,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.red,
                        width: Get.width / 1 / 4,
                        child: Text("Working With:",
                            style: UIDataTextStyles.commontext),
                      ),
                      SizedBox(
                        width: Get.width / 1 / 3,
                        child: Text("Jorrick Battle(JB1344) ",
                            textAlign: TextAlign.center,
                            style: UIDataTextStyles.commontext),
                      ),
                      SizedBox(
                        width: Get.width / 1 / 4,
                        child: GestureDetector(
                          onTap: () {
                            print("ok");
                          },
                          child: Text(
                            'edit',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.red, fontSize: Get.width * .027),
                          ),
                        ),
                      ),
                    ]).paddingSymmetric(
                    vertical: Get.height * .025, horizontal: Get.width * .01),
              ),
              //
              Container(
                child: Row(children: [
                  SizedBox(
                    child: Text(
                      "Accountability Partner Details:",
                      style: TextStyle(
                          fontSize: Get.width * .03,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ]).paddingSymmetric(
                    horizontal: Get.width * .015, vertical: Get.height * .015),
              ),

              //
              Container(
                color: UIDataColors.greyColor,
                child: Column(
                  children: [
                    //
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Partners:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("Richard Brough(RB811)",
                                // textAlign: TextAlign.center,
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: GestureDetector(
                              onTap: () {
                                print("ok");
                              },
                              child: Text(
                                'edit',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: Get.width * .027),
                              ),
                            ),
                          ),
                        ]).paddingSymmetric(
                        vertical: Get.height * .01,
                        horizontal: Get.width * .01),
                    //

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Partners:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("Kay Coy(KC1254)",
                                // textAlign: TextAlign.center,
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: GestureDetector(
                              onTap: () {
                                print("ok");
                              },
                              child: Text(
                                'edit',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: Get.width * .027),
                              ),
                            ),
                          ),
                        ]).paddingSymmetric(
                        vertical: Get.height * .01,
                        horizontal: Get.width * .01),
                    //
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Partners:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("Richard Brough(RB811)",
                                // textAlign: TextAlign.center,
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: GestureDetector(
                              onTap: () {
                                print("ok");
                              },
                              child: Text(
                                'edit',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: Get.width * .027),
                              ),
                            ),
                          ),
                        ]).paddingSymmetric(
                        vertical: Get.height * .01,
                        horizontal: Get.width * .01),
                    //
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Partners:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("Michael Earl(ME1374)",
                                // textAlign: TextAlign.center,
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: GestureDetector(
                              onTap: () {
                                print("ok");
                              },
                              child: Text(
                                'edit',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: Get.width * .027),
                              ),
                            ),
                          ),
                        ]).paddingSymmetric(
                        vertical: Get.height * .01,
                        horizontal: Get.width * .01),
                    //

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Partners:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("David Gibson (DG688)",
                                // textAlign: TextAlign.center,
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: GestureDetector(
                              onTap: () {
                                print("ok");
                              },
                              child: Text(
                                'edit',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: Get.width * .027),
                              ),
                            ),
                          ),
                        ]).paddingSymmetric(
                        vertical: Get.height * .01,
                        horizontal: Get.width * .01),
                    //
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Partners:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("Shauna Hand(SH1394)",
                                // textAlign: TextAlign.center,
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: GestureDetector(
                              onTap: () {
                                print("ok");
                              },
                              child: Text(
                                'edit',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: Get.width * .027),
                              ),
                            ),
                          ),
                        ]).paddingSymmetric(
                        vertical: Get.height * .01,
                        horizontal: Get.width * .01),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Partners:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("Meilisa Lambert(ML678)",
                                // textAlign: TextAlign.center,
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: GestureDetector(
                              onTap: () {
                                print("ok");
                              },
                              child: Text(
                                'edit',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: Get.width * .027),
                              ),
                            ),
                          ),
                        ]).paddingSymmetric(
                        vertical: Get.height * .01,
                        horizontal: Get.width * .01),
                    //
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Partners:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("Richard Brough(RB811)",
                                // textAlign: TextAlign.center,
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: GestureDetector(
                              onTap: () {
                                print("ok");
                              },
                              child: Text(
                                'edit',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: Get.width * .027),
                              ),
                            ),
                          ),
                        ]).paddingSymmetric(
                        vertical: Get.height * .01,
                        horizontal: Get.width * .01),
                  ],
                )
                    .marginSymmetric(vertical: Get.height * .02)
                    .marginOnly(bottom: Get.height * .03),
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
              Spacer(),
              Text(
                'Remember, you will not be able to view your Accountability Partners’ calendars, nor will they be able to view yours, until they grant you access',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: Get.width * .021),
              )
            ],
          ),
        ),
      )
          .paddingSymmetric(vertical: Get.height * 0.01)
          .marginSymmetric(horizontal: Get.height * 0.03),
    );
  }
}
