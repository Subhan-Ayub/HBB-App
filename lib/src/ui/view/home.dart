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
          height: 200,
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
                    const Text(
                      'TRACK YOUR BUSINESS, GROW YOUR BUSINESS',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          height: 1.9),
                    ),
                    HeightFillButton(
                      height: 30,
                      width: Get.width / 4.3,
                      color: const Color.fromARGB(255, 246, 118, 150),
                      child: const Text('Start Tracking'),
                    ).paddingOnly(top: 10)
                  ],
                ),
              ).paddingOnly(left: 130, top: 50)
            ],
          ),
        ).marginSymmetric(vertical: 70),
        // Todays Activity
        Container(
          width: Get.width / 1.1,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Today's Activity",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: UIDataColors.commonColor),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.trending_flat,
                          size: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
             
            //  ListView Builder
              SizedBox(
                height: 90,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _.todayActivity.length,
                    itemBuilder: (context, index) {
                      return BottomNavContainer(
                        width: 0,
                        height: 150,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                '${_.todayActivity[index]['name']}',
                                style: const TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ).paddingOnly(bottom: 5),
                               Text(
                                '${_.todayActivity[index]['amount']}',
                                style: const TextStyle(
                                    fontSize: 32,
                                    color: UIDataColors.commonColor,
                                    fontWeight: FontWeight.w700),
                              )
                            ]),
                      ).paddingOnly(right: 15);
                    }),
              ).paddingOnly(top: 10)
            ],
          ),
        ),
       
      //  Daily Activity
     
        Container(
          width: Get.width / 1.1,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Daily Activity",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: UIDataColors.commonColor),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.trending_flat,
                          size: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
             
            //  ListView Builder
              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _.dailyActivity.length,
                    itemBuilder: (context, index) {
                      return BottomNavContainer(
                        width: 0,
                        height: 90,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                '${_.dailyActivity[index]['day']}',
                                style: const TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ).paddingOnly(bottom: 5),
                               Text(
                                '${_.dailyActivity[index]['points']}',
                                style: const TextStyle(
                                    fontSize: 32,
                                    color: UIDataColors.commonColor,
                                    fontWeight: FontWeight.w700),
                              )
                            ]),
                      ).paddingOnly(right: 15);
                    }),
              ).paddingOnly(top: 10)
            ],
          ),
        ).paddingOnly(top: 50)
     
      ],
    );
  }
}
