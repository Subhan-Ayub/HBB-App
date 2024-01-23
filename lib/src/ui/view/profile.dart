// ignore_for_file: must_be_immutable, unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hbb/src/controllers/profileController.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:hbb/src/utils/uidata/container_decor.dart';

class ProfileScreen extends StatelessWidget {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: Get.width * .06, fontWeight: FontWeight.bold),
                ).marginSymmetric(vertical: Get.height * .01),
                Container(
                  width: Get.width,
                  height: Get.height * .15,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(18, 18, 18, 18)
                              .withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 2,
                          offset: const Offset(3, 3),
                        ),
                      ],
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Container(
                        height: Get.height * .09,
                        width: Get.width * .25,
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
                            width: 4.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/one.jpg'),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${box.read('uname')}',
                            style: TextStyle(
                                fontSize: Get.width * .03,
                                fontWeight: FontWeight.bold),
                          ),
                          // Text('@Itunuoluwa',
                          //     style: TextStyle(
                          //       fontSize: Get.width * .03,
                          //       color: UIDataColors.greyColor,
                          //     )),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Get.toNamed(Routes.editprofile);
                          },
                          icon: Icon(
                            Icons.edit_outlined,
                            size: Get.width * .1,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ).marginSymmetric(vertical: Get.height * .015),
                Container(
                    width: Get.width,
                    height: Get.height * .67,
                    decoration: UIDataDecoration.boxdecor,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          //
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.programdetail);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Program Details',
                                      style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Click here to edit your program details',
                                      style: TextStyle(
                                        fontSize: Get.width * .025,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: Get.width * .045,
                                ),
                              ],
                            )
                                .marginOnly(top: Get.height * .04)
                                .paddingSymmetric(horizontal: Get.width * .05),
                          ),
                          SizedBox(
                            height: Get.height * .015,
                          ),
                          //
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.programdata);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'My Program Data',
                                      style: TextStyle(
                                          fontSize: Get.width * .035,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Check and update your Program Goals',
                                      style: TextStyle(
                                        fontSize: Get.width * .025,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: Get.width * .045,
                                ),
                              ],
                            ).paddingSymmetric(horizontal: Get.width * .05),
                          ),
                          SizedBox(
                            height: Get.height * .015,
                          ),
                          //
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Yours Hbb Usage at a Glance',
                                    style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'You has been in this program for 2622 days and \nyou have fulfill commitment number 12!',
                                    style: TextStyle(
                                      fontSize: Get.width * .025,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ).paddingSymmetric(horizontal: Get.width * .05),
                          SizedBox(
                            height: Get.height * .015,
                          ),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Follow Up Tasks',
                                    style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'You have follow up task due \nclick here to go your calender',
                                    style: TextStyle(
                                      fontSize: Get.width * .025,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: Get.width * .045,
                              ),
                            ],
                          ).paddingSymmetric(horizontal: Get.width * .05),
                          SizedBox(
                            height: Get.height * .015,
                          ),
                          //
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Quick Satistics for January 2024',
                                    style: TextStyle(
                                        fontSize: Get.width * .035,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Daily Exposures:',
                                    style: TextStyle(
                                      fontSize: Get.width * .035,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "0 Daily Exposures",
                                    style: TextStyle(
                                      fontSize: Get.width * .025,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "0% of this month's Commitment ",
                                    style: TextStyle(
                                      fontSize: Get.width * .025,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * .015,
                                  ),
                                  Text(
                                    'Weekly Meeting:',
                                    style: TextStyle(
                                      fontSize: Get.width * .035,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "0 Weekly Meeting",
                                    style: TextStyle(
                                      fontSize: Get.width * .025,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "0% of this month's Commitment ",
                                    style: TextStyle(
                                      fontSize: Get.width * .025,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * .015,
                                  ),
                                  Text(
                                    'Conference Calls:',
                                    style: TextStyle(
                                      fontSize: Get.width * .035,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "0 Weekly Meeting",
                                    style: TextStyle(
                                      fontSize: Get.width * .025,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "0% of this month's Commitment ",
                                    style: TextStyle(
                                      fontSize: Get.width * .025,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * .015,
                                  ),
                                  Text(
                                    'National/Iternational Exposures:',
                                    style: TextStyle(
                                      fontSize: Get.width * .035,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "0 Weekly Meeting",
                                    style: TextStyle(
                                      fontSize: Get.width * .025,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "0% of this month's Commitment ",
                                    style: TextStyle(
                                      fontSize: Get.width * .025,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ).paddingSymmetric(horizontal: Get.width * .05),
                        ],
                      ),
                    )),
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
