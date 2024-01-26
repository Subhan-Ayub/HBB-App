// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/homeController.dart';
import 'package:hbb/src/ui/widgets/commonScaffold.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import 'package:hbb/src/utils/uidata/color.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController _ = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      appbar: true,
      color: Colors.white,
      bodyData: body(),
      showDrawer: true,
    );
  }

  Widget body() {
    return SafeArea(
      child: Column(
        children: [
          Container(
            // width: Get.width,
            height: Get.height * 0.2,
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
                // color: Color.fromARGB(255, 47, 47, 47),
                image: DecorationImage(
                    // opacity: 1,
                    image: AssetImage(
                      'assets/images/banner-img.png',
                    ),
                    fit: BoxFit.cover)),
            child: SizedBox(
              width: Get.width / 2,
              child: Text(
                'TRACK YOUR BUSINESS, GROW YOUR BUSINESS',
                style: TextStyle(
                    fontSize: Get.width * 0.039,
                    fontWeight: FontWeight.w900,
                    // color: Colors.white,
                    height: Get.height * 0.0019),
              ).marginOnly(left: 10),
            ),
          ).marginOnly(top: Get.height * 0.03),

          // Track Activity
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Track Activity",
                      style: TextStyle(
                          fontSize: Get.width * 0.06,
                          fontWeight: FontWeight.w700),
                    ).marginSymmetric(vertical: Get.height * 0.02),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.reports,
                                  arguments: '/api/daily-report');
                            },
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: Get.width * 0.27,
                                  height: Get.height * 0.12,
                                  decoration: BoxDecoration(
                                    color: UIDataColors.greyColor,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/dailyexposure.png',
                                      ),
                                    ),
                                  ),
                                ).marginOnly(right: Get.width * .01),
                                Text(
                                  'Daily Exposure',
                                  style: TextStyle(
                                      fontSize: Get.width * 0.027,
                                      fontWeight: FontWeight.bold),
                                ).marginSymmetric(vertical: Get.height * .005)
                              ],
                            ).marginOnly(right: Get.width * .015),
                          ),
                          //
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.reports,
                                  arguments: '/api/conference-report');
                            },
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: Get.width * 0.27,
                                  height: Get.height * 0.12,
                                  decoration: BoxDecoration(
                                    color: UIDataColors.greyColor,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/conferencecall.png',
                                      ),
                                    ),
                                  ),
                                ).marginOnly(right: Get.width * .01),
                                Text(
                                  'Conference Call',
                                  style: TextStyle(
                                      fontSize: Get.width * 0.027,
                                      fontWeight: FontWeight.bold),
                                ).marginSymmetric(vertical: Get.height * .005)
                              ],
                            ).marginOnly(right: Get.width * .015),
                          ),
                          //
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.reports,
                                  arguments: '/api/weekly-report');
                            },
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: Get.width * 0.27,
                                  height: Get.height * 0.12,
                                  decoration: BoxDecoration(
                                    color: UIDataColors.greyColor,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/weeklymeeting.png',
                                      ),
                                    ),
                                  ),
                                ).marginOnly(right: Get.width * .01),
                                Text(
                                  'Weekly Meeting',
                                  style: TextStyle(
                                      fontSize: Get.width * 0.027,
                                      fontWeight: FontWeight.bold),
                                ).marginSymmetric(vertical: Get.height * .005)
                              ],
                            ).marginOnly(right: Get.width * .015),
                          ),
                          //
                           InkWell(
                            onTap: () {
                              Get.toNamed(Routes.reports,
                                  arguments: '/api/national-international-report');
                            },
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: Get.width * 0.27,
                                  height: Get.height * 0.12,
                                  decoration: BoxDecoration(
                                    color: UIDataColors.greyColor,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/weeklymeeting.png',
                                      ),
                                    ),
                                  ),
                                ).marginOnly(right: Get.width * .01),
                                Text(
                                  'National/International ',
                                  style: TextStyle(
                                      fontSize: Get.width * 0.027,
                                      fontWeight: FontWeight.bold),
                                ).marginSymmetric(vertical: Get.height * .005)
                              ],
                            ).marginOnly(right: Get.width * .015),
                          ),
                          //

                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.reports,
                                  arguments: '/api/signup-type-report');
                            },
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: Get.width * 0.27,
                                  height: Get.height * 0.12,
                                  decoration: BoxDecoration(
                                    color: UIDataColors.greyColor,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/signups.png',
                                      ),
                                    ),
                                  ),
                                ).marginOnly(right: Get.width * .01),
                                Text(
                                  'SignUp Reports',
                                  style: TextStyle(
                                      fontSize: Get.width * 0.027,
                                      fontWeight: FontWeight.bold),
                                ).marginSymmetric(vertical: Get.height * .005)
                              ],
                            ).marginOnly(right: Get.width * .015),
                          ),
                          //
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //
              Container(
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Service",
                      style: TextStyle(
                          fontSize: Get.width * 0.06,
                          fontWeight: FontWeight.w700),
                    ).marginSymmetric(vertical: Get.height * .02),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Activity
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.activity);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: Get.width * 0.2,
                                height: Get.height * 0.09,
                                decoration: BoxDecoration(
                                  color: UIDataColors.greyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.graphic_eq,
                                  size: Get.width * 0.07,
                                  color: Colors.red,
                                ),
                              ).marginOnly(right: Get.width * .01),
                            ),
                            Text(
                              'Activity ',
                              style: TextStyle(
                                  fontSize: Get.width * 0.027,
                                  fontWeight: FontWeight.bold),
                            ).marginSymmetric(vertical: Get.height * .005)
                          ],
                        ),
                        // Statistics and Reports
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.reports);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: Get.width * 0.2,
                                height: Get.height * 0.09,
                                decoration: BoxDecoration(
                                  color: UIDataColors.greyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.bar_chart_sharp,
                                  size: Get.width * 0.07,
                                  color: Colors.red,
                                ),
                              ).marginOnly(right: Get.width * .01),
                            ),
                            Text(
                              'Statistics',
                              style: TextStyle(
                                  fontSize: Get.width * 0.027,
                                  fontWeight: FontWeight.bold),
                            ).marginSymmetric(vertical: Get.height * .005)
                          ],
                        ),

                        //My Goals
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.mygoals);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: Get.width * 0.2,
                                height: Get.height * 0.09,
                                decoration: BoxDecoration(
                                  color: UIDataColors.greyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.golf_course,
                                  size: Get.width * 0.07,
                                  color: Colors.red,
                                ),
                              ).marginOnly(right: Get.width * .01),
                            ),
                            Text(
                              'My Goals',
                              style: TextStyle(
                                  fontSize: Get.width * 0.027,
                                  fontWeight: FontWeight.bold),
                            ).marginSymmetric(vertical: Get.height * .005)
                          ],
                        ),

                        //Profile
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.profile);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: Get.width * 0.2,
                                height: Get.height * 0.09,
                                decoration: BoxDecoration(
                                  color: UIDataColors.greyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.account_circle_outlined,
                                  size: Get.width * 0.07,
                                  color: Colors.red,
                                ),
                              ).marginOnly(right: Get.width * .01),
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                  fontSize: Get.width * 0.027,
                                  fontWeight: FontWeight.bold),
                            ).marginSymmetric(vertical: Get.height * .005)
                          ],
                        ),
                        //
                      ],
                    ),
                    //
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Coaching Network
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.coachnetwork);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: Get.width * 0.2,
                                height: Get.height * 0.09,
                                decoration: BoxDecoration(
                                  color: UIDataColors.greyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.category_rounded,
                                  size: Get.width * 0.07,
                                  color: Colors.red,
                                ),
                              ).marginOnly(right: Get.width * .01),
                            ),
                            Text(
                              'My Coaching \nNetwork',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: Get.width * 0.027,
                                  fontWeight: FontWeight.bold),
                            ).marginSymmetric(vertical: Get.height * .005)
                          ],
                        ),

                        // Income and Expense
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.incomeexpense);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: Get.width * 0.2,
                                height: Get.height * 0.09,
                                decoration: BoxDecoration(
                                  color: UIDataColors.greyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.wallet_outlined,
                                  size: Get.width * 0.07,
                                  color: Colors.red,
                                ),
                              ).marginOnly(right: Get.width * .01),
                            ),
                            Text(
                              'My Income \nAnd Expenses',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: Get.width * 0.027,
                                  fontWeight: FontWeight.bold),
                            ).marginSymmetric(vertical: Get.height * .005)
                          ],
                        ),

                        // Support Team
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.supportteam);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: Get.width * 0.2,
                                height: Get.height * 0.09,
                                decoration: BoxDecoration(
                                  color: UIDataColors.greyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.support_agent,
                                  size: Get.width * 0.07,
                                  color: Colors.red,
                                ),
                              ).marginOnly(right: Get.width * .01),
                            ),
                            Text(
                              'My Team \nSupport',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: Get.width * 0.027,
                                  fontWeight: FontWeight.bold),
                            ).marginSymmetric(vertical: Get.height * .005)
                          ],
                        ),

                        // Contact List
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.contactlist);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: Get.width * 0.2,
                                height: Get.height * 0.09,
                                decoration: BoxDecoration(
                                  color: UIDataColors.greyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.menu_book_sharp,
                                  size: Get.width * 0.07,
                                  color: Colors.red,
                                ),
                              ).marginOnly(right: Get.width * .01),
                            ),
                            Text(
                              'My Contact \nList',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: Get.width * 0.027,
                                  fontWeight: FontWeight.bold),
                            ).marginSymmetric(vertical: Get.height * .005)
                          ],
                        ),
                        //
                      ],
                    ),
                    //
                  ],
                ),
              )
            ],
          ),

          // Service
        ],
      ).marginSymmetric(horizontal: Get.height * 0.02),
    );
  }
}
