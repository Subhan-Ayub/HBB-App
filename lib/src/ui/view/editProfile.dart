// ignore_for_file: must_be_immutable, unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hbb/src/controllers/profileController.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:hbb/src/utils/uidata/text_styles.dart';

class EditProfileScreen extends StatelessWidget {
  final ProfileController _ = Get.put(ProfileController());
  GetStorage box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          // color: Colors.amber,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: Get.height * .09,
                  width: Get.width * .4,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(18, 18, 18, 18)
                            .withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset: const Offset(3, 3),
                      ),
                    ],
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/one.jpg'),
                  ),
                ).marginOnly(top: Get.height * .05),
                Text(
                  "${box.read('uname')}",
                  style: TextStyle(
                      fontSize: Get.width * .04, fontWeight: FontWeight.bold),
                ).marginOnly(top: Get.height * .02),
                Text(
                  "Itunuoluwa@petra.africa",
                  style: TextStyle(
                    fontSize: Get.width * .035,
                    color: Colors.grey,
                  ),
                ).marginSymmetric(vertical: Get.height * .001),
                Divider(
                  color: Colors.black,
                ).marginOnly(top: Get.height * .02),
                Container(
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personal Details",
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: Get.width * .05,
                            fontWeight: FontWeight.bold),
                      ).marginSymmetric(vertical: Get.height * .01),
                      Divider(),
                      //
                      Container(
                        color: UIDataColors.greyColor,
                        child: Row(children: [
                          Container(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Name:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("Joseph Silich",
                                textAlign: TextAlign.start,
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
                            vertical: Get.height * .015,
                            horizontal: Get.width * .01),
                      ),
                      //
                      Container(
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(
                            color: Color.fromARGB(102, 158, 158, 158),
                            width: 1.0,
                          )),
                        ),
                        child: Row(children: [
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: Text(
                              "My Unique ID:",
                              style: UIDataTextStyles.commontext,
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text(
                              "JS635",
                              textAlign: TextAlign.start,
                              style: UIDataTextStyles.commontext,
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 4,
                          ),
                        ]).paddingSymmetric(
                            horizontal: Get.width * .01,
                            vertical: Get.height * .015),
                      ),
                      //
                      Container(
                        color: UIDataColors.greyColor,
                        child: Row(children: [
                          Container(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Address:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text(
                                "109 saddlebrook drive Harrison City, PA 15636",
                                textAlign: TextAlign.start,
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
                            vertical: Get.height * .015,
                            horizontal: Get.width * .01),
                      ),
                      //
                      Container(
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(
                            color: Color.fromARGB(102, 158, 158, 158),
                            width: 1.0,
                          )),
                        ),
                        child: Row(children: [
                          Container(
                            width: Get.width / 1 / 4,
                            child: Text(
                              "Email:",
                              style: UIDataTextStyles.commontext,
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text(
                              "jmsprestations@gmail.com",
                              textAlign: TextAlign.start,
                              style: UIDataTextStyles.commontext,
                            ),
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
                            horizontal: Get.width * .01,
                            vertical: Get.height * .015),
                      ),
                      //
                      Container(
                        color: UIDataColors.greyColor,
                        child: Row(children: [
                          Container(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Phone:",
                                style: UIDataTextStyles.commontext),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("(724) 396-8847",
                                textAlign: TextAlign.start,
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
                            vertical: Get.height * .015,
                            horizontal: Get.width * .01),
                      ),
                      //
                      Container(
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(
                            color: Color.fromARGB(102, 158, 158, 158),
                            width: 1.0,
                          )),
                        ),
                        child: Row(children: [
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: Text(
                              "cell:",
                              style: UIDataTextStyles.commontext,
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text(
                              "(724) 396-8847",
                              textAlign: TextAlign.start,
                              style: UIDataTextStyles.commontext,
                            ),
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
                            horizontal: Get.width * .01,
                            vertical: Get.height * .015),
                      ),
                      //
                      Container(
                        color: UIDataColors.greyColor,
                        child: Row(children: [
                          Container(
                            // color: Colors.red,
                            width: Get.width / 1 / 4,
                            child: Text("Site Username:",
                                style: TextStyle(fontSize: Get.width * .025)),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text("Joeflow",
                                textAlign: TextAlign.start,
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
                            vertical: Get.height * .015,
                            horizontal: Get.width * .01),
                      ),
                      //
                      Container(
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(
                            color: Color.fromARGB(102, 158, 158, 158),
                            width: 1.0,
                          )),
                        ),
                        child: Row(children: [
                          Container(
                            width: Get.width / 1 / 4,
                            child: Text(
                              "Site Password:",
                              style: UIDataTextStyles.commontext,
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 3,
                            child: Text(
                              "(Don't Shown)",
                              textAlign: TextAlign.start,
                              style: UIDataTextStyles.commontext,
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 1 / 4,
                            child: GestureDetector(
                              onTap: () {
                                print("ok");
                              },
                              child: Text(
                                'Change',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: Get.width * .027),
                              ),
                            ),
                          ),
                        ]).paddingSymmetric(
                            horizontal: Get.width * .01,
                            vertical: Get.height * .015),
                      ),
                      //
                      Container(
                        color: UIDataColors.greyColor,
                        child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                              Text('Cancel My SubScription',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: Get.width * .027))
                            ])
                            .marginOnly(top: Get.height * .015)
                            .paddingSymmetric(
                                vertical: Get.height * .015,
                                horizontal: Get.width * .01),
                      ),
                      //

                      Divider().marginSymmetric(
                        vertical: Get.height * .015,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.offAndToNamed(Routes.profile);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: UIDataColors.greyColor,
                                border: Border.all(
                                  color: Color.fromARGB(102, 158, 158, 158),
                                  width: 1.0,
                                ),
                              ),
                              child: Text(
                                'Close',
                                style: UIDataTextStyles.commontext,
                              ).paddingAll(Get.width * .02),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
          .paddingSymmetric(vertical: Get.height * 0.01)
          .marginSymmetric(horizontal: Get.height * 0.03),
    );
  }
}
