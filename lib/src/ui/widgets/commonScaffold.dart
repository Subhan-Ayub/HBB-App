import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/iconController.dart';
import 'package:hbb/src/ui/widgets/drawer.dart';
import 'package:hbb/src/ui/widgets/commonClasses.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:hbb/src/utils/uidata/text_styles.dart';

class CommonScaffold extends StatelessWidget {
  final appbar;
  final showDrawer;
  final Widget bodyData;
  final color;

  CommonScaffold(
      {super.key,
      this.appbar = false,
      required this.color,
      required this.bodyData,
      this.showDrawer = false});

  final IconController iconController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: color,
        appBar: appbar
            ? AppBar(
                // Logo Container
                flexibleSpace: SizedBox(
                  height: Get.width * 0.12,
                  child: Image.asset('assets/images/logo.png'),
                ).paddingOnly(top: 5, right: Get.width / 1.5),

                iconTheme: const IconThemeData(
                    color: UIDataColors.commonColor, size: 30),
                backgroundColor: Colors.transparent,
                elevation: 0,

                // Bottom Border
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(
                      10), // Adjust the height of the border
                  child: Container(
                    color: UIDataColors.commonColor, // Color of the border
                    height: 8,
                    width: Get.width / 1.07,
                  ),
                ),

                // title: const Text('Test'),
              )
            : null,

        // Drawer
        endDrawer: showDrawer ? MyDrawer() : null,
        body: bodyData,

        // Bottom Bar
        bottomNavigationBar: SafeArea(
          child: Container(
            color: Colors.white,
            height: Get.height * 0.17,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => BottomNavContainer(
                      height: Get.height * 0.08,
                      width: Get.width * 0.18,
                      child: InkWell(
                        onTap: () {
                          if (iconController.currentRoute != Routes.home) {
                            Get.offAllNamed(Routes.home);
                          }
                          iconController.setCurrentRoute(Routes.home);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: iconController.currentRoute == Routes.home
                                  ? UIDataColors.commonColor
                                  : Colors.grey,
                              size: Get.width * 0.1,
                            ),
                            Text(
                              'Home',
                              style: iconController.currentRoute == Routes.home
                                  ? UIDataTextStyles.BottomNavHoverStyle
                                  : UIDataTextStyles.BottomNavStyle,
                            )
                          ],
                        ),
                      )).marginOnly(left: 20),
                ),
                Obx(
                  () => BottomNavContainer(
                      height: Get.height * 0.08,
                      width: Get.width * 0.18,
                      child: InkWell(
                        onTap: () {
                          if (iconController.currentRoute != Routes.activity) {
                            Get.offAllNamed(Routes.activity);
                          }
                          iconController.setCurrentRoute(Routes.activity);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.graphic_eq,
                              color:
                                  iconController.currentRoute == Routes.activity
                                      ? UIDataColors.commonColor
                                      : Colors.grey,
                              size: Get.width * 0.1,
                            ),
                            Text('Activity',
                                style: iconController.currentRoute ==
                                        Routes.activity
                                    ? UIDataTextStyles.BottomNavHoverStyle
                                    : UIDataTextStyles.BottomNavStyle)
                          ],
                        ),
                      )),
                ),
                BottomNavContainer(
                    height: Get.height * 0.08,
                    width: Get.width * 0.18,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.grey,
                            size: Get.width * 0.1,
                          ),
                          const Text('Settings',
                              style: UIDataTextStyles.BottomNavStyle)
                        ],
                      ),
                    )),
                BottomNavContainer(
                    height: Get.height * 0.08,
                    width: Get.width * 0.18,
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                            size: Get.width * 0.1,
                          ),
                          const Text('Profile',
                              style: UIDataTextStyles.BottomNavStyle)
                        ],
                      ),
                    )).paddingOnly(right: 20),
              ],
            ),
          ).marginOnly(bottom: 0),
        ),
      ),
    );
  }
}
