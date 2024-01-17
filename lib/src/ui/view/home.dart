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
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: Get.height * 0.22,
            child: Container(
              width: Get.width / 1.1,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/header-image.png',
                      ),
                      fit: BoxFit.contain)),
              child: SizedBox(
                width: Get.width / 2,
                child: Text(
                  'TRACK YOUR BUSINESS, GROW YOUR BUSINESS',
                  style: TextStyle(
                      fontSize: Get.width * 0.039,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      height: Get.height * 0.0019),
                ),
              ),
            ),
          ).marginOnly(top: Get.height * 0.04),

          // Track Activity
          Container(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Track Activity",
                  style: TextStyle(
                      fontSize: Get.width * 0.07, fontWeight: FontWeight.w700),
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
                              ),
                              child: Icon(
                                Icons.assessment_outlined,
                                size: Get.width * 0.15,
                                color: Colors.red,
                              ),
                            ).marginOnly(right: Get.width * .01),
                            Text(
                              'Daily Exposure',
                              style: TextStyle(fontSize: Get.width * 0.027),
                            ).marginSymmetric(vertical: Get.height * .01)
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
                              ),
                              child: Icon(
                                Icons.group,
                                size: Get.width * 0.15,
                                color: Colors.red,
                              ),
                            ).marginOnly(right: Get.width * .01),
                            Text(
                              'Conference Call',
                              style: TextStyle(fontSize: Get.width * 0.027),
                            ).marginSymmetric(vertical: Get.height * .01)
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
                              ),
                              child: Icon(
                                Icons.speaker_group_sharp,
                                size: Get.width * 0.15,
                                color: Colors.red,
                              ),
                            ).marginOnly(right: Get.width * .01),
                            Text(
                              'Weekly Meeting',
                              style: TextStyle(fontSize: Get.width * 0.027),
                            ).marginSymmetric(vertical: Get.height * .01)
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
                              ),
                              child: Icon(
                                Icons.cyclone_outlined,
                                size: Get.width * 0.15,
                                color: Colors.red,
                              ),
                            ).marginOnly(right: Get.width * .01),
                            Text(
                              'SignUp Reports',
                              style: TextStyle(fontSize: Get.width * 0.027),
                            ).marginSymmetric(vertical: Get.height * .01)
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
      
          // Service
          Container(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Service",
                  style: TextStyle(
                      fontSize: Get.width * 0.07, fontWeight: FontWeight.w700),
                ).marginSymmetric(vertical: Get.height * .02),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: Get.width * 0.2,
                          height: Get.height * 0.09,
                          decoration: BoxDecoration(
                            color: UIDataColors.greyColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.local_activity,
                            size: Get.width * 0.07,
                            color: Colors.red,
                          ),
                        ).marginOnly(right: Get.width * .01),
                        Text(
                          'Activity',
                          style: TextStyle(fontSize: Get.width * 0.027),
                        ).marginSymmetric(vertical: Get.height * .01)
                      ],
                    ),
                    //
                    Column(
                      children: [
                        Container(
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
                        Text(
                          'Statistics',
                          style: TextStyle(fontSize: Get.width * 0.027),
                        ).marginSymmetric(vertical: Get.height * .01)
                      ],
                    ),
                    //
                    Column(
                      children: [
                        Container(
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
                        Text(
                          'My Goals',
                          style: TextStyle(fontSize: Get.width * 0.027),
                        ).marginSymmetric(vertical: Get.height * .01)
                      ],
                    ),
                    //
                    Column(
                      children: [
                        Container(
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
                        Text(
                          'Profile',
                          style: TextStyle(fontSize: Get.width * 0.027),
                        ).marginSymmetric(vertical: Get.height * .01)
                      ],
                    ),
                    //
                  ],
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
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
                        Text(
                          'My Coaching \nNetwork',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: Get.width * 0.027),
                        ).marginSymmetric(vertical: Get.height * .01)
                      ],
                    ),
                    //
                    Column(
                      children: [
                        Container(
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
                        Text(
                          'My Income \nAnd Expenses',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: Get.width * 0.027),
                        ).marginSymmetric(vertical: Get.height * .01)
                      ],
                    ),
                    //
                    Column(
                      children: [
                        Container(
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
                        Text(
                          'My Team \nSupport',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: Get.width * 0.027),
                        ).marginSymmetric(vertical: Get.height * .01)
                      ],
                    ),
                    //
                    Column(
                      children: [
                        Container(
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
                        Text(
                          'My Contact \nList',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: Get.width * 0.027),
                        ).marginSymmetric(vertical: Get.height * .01)
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
      ).marginSymmetric(horizontal: Get.height * 0.02),
    );
  }
}
