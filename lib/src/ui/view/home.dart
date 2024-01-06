import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/homeController.dart';
import 'package:hbb/src/ui/widgets/commonScaffold.dart';
import 'package:hbb/src/ui/widgets/commonClasses.dart';
import 'package:hbb/src/utils/uidata/color.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController _ = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      bodyData: body(),
      showDrawer: true,
    );
  }

  Widget body() {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: Get.height * 0.22,
          child: Stack(
            children: [
              Container(
                width: Get.width / 1.1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/header-image.png',
                        ),
                        fit: BoxFit.contain)),
              ),
              SizedBox(
                width: Get.width / 2.1,
                child: Column(
                  children: [
                    Text(
                      'TRACK YOUR BUSINESS, GROW YOUR BUSINESS',
                      style: TextStyle(
                          fontSize: Get.width * 0.038,
                          fontWeight: FontWeight.w400,
                          height: Get.height * 0.0019),
                    ),
                    HeightFillButton(
                      height: 30,
                      width: Get.width / 4.3,
                      color: const Color.fromARGB(255, 246, 118, 150),
                      child: Text(
                        'Start Tracking',
                        style: TextStyle(fontSize: Get.width * 0.027),
                      ),
                    ).paddingOnly(top: Get.height * 0.01)
                  ],
                ),
              ).paddingOnly(left: 130, top: 50)
            ],
          ),
        ).marginSymmetric(vertical: Get.height * 0.055),

        // Todays Activity
        // Container(
        //   width: Get.width / 1.1,
        //   child: Column(
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             "Today's Activity",
        //             style: TextStyle(
        //                 fontSize: Get.width * 0.045,
        //                 fontWeight: FontWeight.w700),
        //           ),
        //           InkWell(
        //             onTap: () {},
        //             child: Row(
        //               children: [
        //                 Text(
        //                   'Details',
        //                   style: TextStyle(
        //                       fontSize: Get.width * 0.045,
        //                       fontWeight: FontWeight.w400,
        //                       color: UIDataColors.commonColor),
        //                 ),
        //                 SizedBox(width: Get.width * 0.02),
        //                 Icon(
        //                   Icons.trending_flat,
        //                   size: Get.width * 0.07,
        //                 )
        //               ],
        //             ),
        //           )
        //         ],
        //       ),

        //       //  ListView Builder
        //       SizedBox(
        //         height: Get.height * 0.1,
        //         child: ListView.builder(
        //             scrollDirection: Axis.horizontal,
        //             itemCount: _.todayActivity.length,
        //             itemBuilder: (context, index) {
        //               return BottomNavContainer(
        //                 width: 0,
        //                 height: Get.width * 0.36,
        //                 child: Column(
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Text(
        //                         '${_.todayActivity[index]['name']}',
        //                         style: TextStyle(
        //                             fontSize: Get.width * 0.034,
        //                             fontWeight: FontWeight.w400),
        //                       ).paddingOnly(bottom: 5),
        //                       Text(
        //                         '${_.todayActivity[index]['amount']}',
        //                         style: TextStyle(
        //                             fontSize: Get.width * 0.06,
        //                             color: UIDataColors.commonColor,
        //                             fontWeight: FontWeight.w700),
        //                       )
        //                     ]),
        //               ).paddingOnly(right: 15);
        //             }),
        //       ).paddingOnly(top: Get.height * 0.01)
        //     ],
        //   ),
        // ),

        //  Daily Activity

        Container(
          width: Get.width / 1.1,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daily Activity",
                    style: TextStyle(
                        fontSize: Get.width * 0.045,
                        fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                              fontSize: Get.width * 0.045,
                              fontWeight: FontWeight.w400,
                              color: UIDataColors.commonColor),
                        ),
                        SizedBox(width: Get.width * 0.02),
                        Icon(
                          Icons.trending_flat,
                          size: Get.width * 0.07,
                        )
                      ],
                    ),
                  )
                ],
              ),

              //  ListView Builder
              SizedBox(
                height: Get.height * 0.14,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _.dailyActivity.length,
                    itemBuilder: (context, index) {
                      return BottomNavContainer(
                        width: 0,
                        height: Get.width * 0.22,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${_.dailyActivity[index]['day']}',
                                style: TextStyle(
                                    fontSize: Get.width * 0.034,
                                    fontWeight: FontWeight.w400),
                              ).paddingOnly(bottom: 5),
                              Text(
                                '${_.dailyActivity[index]['points']}',
                                style: TextStyle(
                                    fontSize: Get.width * 0.06,
                                    color: UIDataColors.commonColor,
                                    fontWeight: FontWeight.w700),
                              )
                            ]),
                      ).paddingOnly(right: 15);
                    }),
              ).paddingOnly(top: Get.height * 0.01)
            ],
          ),
        ).paddingOnly(top: Get.height * 0.055)
      ],
    );
  }
}
