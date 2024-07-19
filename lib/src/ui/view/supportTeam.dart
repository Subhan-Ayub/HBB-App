// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:hbb/src/utils/uidata/text_styles.dart';

import '../../controllers/SupportTeamController.dart';

class SupportTeamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SupportTeamController _ = Get.find<SupportTeamController>();
    return Scaffold(
      //  appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          // color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        size: Get.width * 0.05,
                        color: Colors.black,
                      )),
                  Text(
                    "My Support Team",
                    textAlign: TextAlign.start,
                    style: UIDataTextStyles.headingtextbold,
                  ).paddingSymmetric(horizontal: Get.width * 0.015),
                ],
              ).marginSymmetric(vertical: Get.height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Rank 1
                  Column(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rank upto Position no. 1',
                                  style: TextStyle(
                                    fontSize: Get.width * .019,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * .08,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          _.position1.value =
                                              !_.position1.value;
                                        },
                                        child: Text(
                                          'Edit',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: Get.width * .020,
                                            color: Colors.red,
                                          ),
                                        ).marginSymmetric(
                                            horizontal: Get.width * .0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ).paddingSymmetric(horizontal: Get.width * .01),
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
                      //
                      Stack(
                        children: [
                          // Container with content
                          Container(
                            width: Get.width / 2.25,
                            // height: Get.height * .06,
                            decoration: BoxDecoration(
                                color: UIDataColors.greyColor,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                )),
                            child: Column(
                              children: [
                                // Name
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Name :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fname1}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // Home
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Home :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fhome1}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // Office
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Office :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.foffice1}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // cell
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cell :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fcell1}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // fax
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Fax :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.ffax1}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // email
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Email :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.femail1}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),
                              ],
                            ).paddingSymmetric(vertical: 10),
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
                          Obx(() => _.position1.value
                              ? Container(
                                  width: Get.width / 2.25,
                                  color:
                                      const Color.fromARGB(255, 220, 220, 220),
                                  child: Column(children: [
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.name,
                                              decoration: InputDecoration(
                                                hintText: 'Name',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.home,
                                              decoration: InputDecoration(
                                                hintText: 'Home',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 0),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.office,
                                              decoration: InputDecoration(
                                                hintText: 'Office',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.cell,
                                              decoration: InputDecoration(
                                                hintText: 'Cell',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 0),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.fax,
                                              decoration: InputDecoration(
                                                hintText: 'Fax',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.email,
                                              decoration: InputDecoration(
                                                hintText: 'Email',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingOnly(
                                            left: 10, right: 10, bottom: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              _.position1.value = false;
                                            },
                                            child: Text(
                                              'Cancel',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            )),
                                        ElevatedButton(
                                            onPressed: () {
                                              _.fname1.value =
                                                  _.name.value.text;
                                              _.fhome1.value =
                                                  _.home.value.text;
                                              _.foffice1.value =
                                                  _.office.value.text;
                                              _.fcell1.value =
                                                  _.cell.value.text;
                                              _.ffax1.value = _.fax.value.text;
                                              _.femail1.value =
                                                  _.email.value.text;
                                            },
                                            child: Text(
                                              'Save',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ))
                                      ],
                                    ).paddingOnly(bottom: 20)
                                  ]),
                                )
                              : SizedBox())
                        ],
                      ),

                      //
                    ],
                  ),

// Rank 2
                  Column(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rank upto Position no. 2',
                                  style: TextStyle(
                                    fontSize: Get.width * .019,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * .08,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          _.position2.value =
                                              !_.position2.value;
                                        },
                                        child: Text(
                                          'Edit',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: Get.width * .020,
                                            color: Colors.red,
                                          ),
                                        ).marginSymmetric(
                                            horizontal: Get.width * .0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ).paddingSymmetric(horizontal: Get.width * .01),
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
                      //
                      Stack(
                        children: [
                          // Container with content
                          Container(
                            width: Get.width / 2.25,
                            // height: Get.height * .06,
                            decoration: BoxDecoration(
                                color: UIDataColors.greyColor,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                )),
                            child: Column(
                              children: [
                                // Name
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Name :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fname2}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // Home
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Home :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fhome2}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // Office
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Office :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.foffice2}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // cell
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cell :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fcell2}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // fax
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Fax :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.ffax2}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // email
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Email :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.femail2}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),
                              ],
                            ).paddingSymmetric(vertical: 10),
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
                          Obx(() => _.position2.value
                              ? Container(
                                  width: Get.width / 2.25,
                                  color:
                                      const Color.fromARGB(255, 220, 220, 220),
                                  child: Column(children: [
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.name2,
                                              decoration: InputDecoration(
                                                hintText: 'Name',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.home2,
                                              decoration: InputDecoration(
                                                hintText: 'Home',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 0),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.office2,
                                              decoration: InputDecoration(
                                                hintText: 'Office',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.cell2,
                                              decoration: InputDecoration(
                                                hintText: 'Cell',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 0),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.fax2,
                                              decoration: InputDecoration(
                                                hintText: 'Fax',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.email2,
                                              decoration: InputDecoration(
                                                hintText: 'Email',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingOnly(
                                            left: 10, right: 10, bottom: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              _.position2.value = false;
                                            },
                                            child: Text(
                                              'Cancel',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            )),
                                        ElevatedButton(
                                            onPressed: () {
                                              _.fname2.value =
                                                  _.name2.value.text;
                                              _.fhome2.value =
                                                  _.home2.value.text;
                                              _.foffice2.value =
                                                  _.office2.value.text;
                                              _.fcell2.value =
                                                  _.cell2.value.text;
                                              _.ffax2.value = _.fax2.value.text;
                                              _.femail2.value =
                                                  _.email2.value.text;

                                              _.position2.value = false;
                                            },
                                            child: Text(
                                              'Save',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ))
                                      ],
                                    ).paddingOnly(bottom: 20)
                                  ]),
                                )
                              : SizedBox())
                        ],
                      ),

                      //
                    ],
                  ),
                ],
              ),

              //

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Rank 3
                  Column(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rank upto Position no. 3',
                                  style: TextStyle(
                                    fontSize: Get.width * .019,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * .08,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          _.position3.value =
                                              !_.position3.value;
                                        },
                                        child: Text(
                                          'Edit',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: Get.width * .020,
                                            color: Colors.red,
                                          ),
                                        ).marginSymmetric(
                                            horizontal: Get.width * .0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ).paddingSymmetric(horizontal: Get.width * .01),
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
                      //
                      Stack(
                        children: [
                          // Container with content
                          Container(
                            width: Get.width / 2.25,
                            // height: Get.height * .06,
                            decoration: BoxDecoration(
                                color: UIDataColors.greyColor,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                )),
                            child: Column(
                              children: [
                                // Name
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Name :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fname3}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // Home
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Home :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fhome3}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // Office
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Office :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.foffice3}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // cell
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cell :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fcell3}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // fax
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Fax :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.ffax3}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // email
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Email :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.femail3}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),
                              ],
                            ).paddingSymmetric(vertical: 10),
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
                          Obx(() => _.position3.value
                              ? Container(
                                  width: Get.width / 2.25,
                                  color:
                                      const Color.fromARGB(255, 220, 220, 220),
                                  child: Column(children: [
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.name3,
                                              decoration: InputDecoration(
                                                hintText: 'Name',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.home3,
                                              decoration: InputDecoration(
                                                hintText: 'Home',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 0),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.office3,
                                              decoration: InputDecoration(
                                                hintText: 'Office',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.cell3,
                                              decoration: InputDecoration(
                                                hintText: 'Cell',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 0),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.fax3,
                                              decoration: InputDecoration(
                                                hintText: 'Fax',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.email3,
                                              decoration: InputDecoration(
                                                hintText: 'Email',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingOnly(
                                            left: 10, right: 10, bottom: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              _.position3.value = false;
                                            },
                                            child: Text(
                                              'Cancel',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            )),
                                        ElevatedButton(
                                            onPressed: () {
                                              _.fname3.value =
                                                  _.name3.value.text;
                                              _.fhome3.value =
                                                  _.home3.value.text;
                                              _.foffice3.value =
                                                  _.office3.value.text;
                                              _.fcell3.value =
                                                  _.cell3.value.text;
                                              _.ffax3.value = _.fax3.value.text;
                                              _.femail3.value =
                                                  _.email3.value.text;

                                              _.position3.value = false;
                                            },
                                            child: Text(
                                              'Save',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ))
                                      ],
                                    ).paddingOnly(bottom: 20)
                                  ]),
                                )
                              : SizedBox())
                        ],
                      ),

                      //
                    ],
                  ),

// Rank 4
                  Column(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rank upto Position no. 4',
                                  style: TextStyle(
                                    fontSize: Get.width * .019,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * .08,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          _.position4.value =
                                              !_.position4.value;
                                        },
                                        child: Text(
                                          'Edit',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: Get.width * .020,
                                            color: Colors.red,
                                          ),
                                        ).marginSymmetric(
                                            horizontal: Get.width * .0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ).paddingSymmetric(horizontal: Get.width * .01),
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
                      //
                      Stack(
                        children: [
                          // Container with content
                          Container(
                            width: Get.width / 2.25,
                            // height: Get.height * .06,
                            decoration: BoxDecoration(
                                color: UIDataColors.greyColor,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                )),
                            child: Column(
                              children: [
                                // Name
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Name :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fname4}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // Home
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Home :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fhome4}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // Office
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Office :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.foffice4}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // cell
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cell :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.fcell4}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // fax
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Fax :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.ffax4}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),

                                // email
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Email :',
                                      style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Obx(
                                      () => Text(
                                        '${_.femail4}',
                                        style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ).marginSymmetric(
                                          horizontal: Get.width * .01),
                                    ),
                                  ],
                                ).paddingSymmetric(horizontal: Get.width * .01),
                              ],
                            ).paddingSymmetric(vertical: 10),
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
                          Obx(() => _.position4.value
                              ? Container(
                                  width: Get.width / 2.25,
                                  color:
                                      const Color.fromARGB(255, 220, 220, 220),
                                  child: Column(children: [
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.name4,
                                              decoration: InputDecoration(
                                                hintText: 'Name',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.home4,
                                              decoration: InputDecoration(
                                                hintText: 'Home',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 0),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.office4,
                                              decoration: InputDecoration(
                                                hintText: 'Office',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.cell4,
                                              decoration: InputDecoration(
                                                hintText: 'Cell',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 0),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.fax4,
                                              decoration: InputDecoration(
                                                hintText: 'Fax',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingSymmetric(
                                            horizontal: 10, vertical: 20),
                                    SizedBox(
                                            height: 30,
                                            child: TextFormField(
                                              controller: _.email4,
                                              decoration: InputDecoration(
                                                hintText: 'Email',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical: 1,
                                                  horizontal: 20,
                                                ),
                                                fillColor: Colors.white,
                                                filled: true,
                                                hintStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1.0),
                                                ),
                                              ),
                                            ))
                                        .paddingOnly(
                                            left: 10, right: 10, bottom: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              _.position4.value = false;
                                            },
                                            child: Text(
                                              'Cancel',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            )),
                                        ElevatedButton(
                                            onPressed: () {
                                              _.fname4.value =
                                                  _.name4.value.text;
                                              _.fhome4.value =
                                                  _.home4.value.text;
                                              _.foffice4.value =
                                                  _.office4.value.text;
                                              _.fcell4.value =
                                                  _.cell4.value.text;
                                              _.ffax4.value = _.fax4.value.text;
                                              _.femail4.value =
                                                  _.email4.value.text;

                                              _.position4.value = false;
                                            },
                                            child: Text(
                                              'Save',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ))
                                      ],
                                    ).paddingOnly(bottom: 20)
                                  ]),
                                )
                              : SizedBox())
                        ],
                      ),

                      //
                    ],
                  ),
                ],
              ).marginSymmetric(vertical: Get.height * .012),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
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
