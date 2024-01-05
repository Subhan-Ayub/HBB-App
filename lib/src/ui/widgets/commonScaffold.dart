import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/ui/widgets/drawer.dart';
import 'package:hbb/src/ui/widgets/commonClasses.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:hbb/src/utils/uidata/text_styles.dart';

class CommonScaffold extends StatelessWidget {
  // final appBar;
  final showDrawer;
  final Widget bodyData;

  const CommonScaffold(
      {super.key,
      // this.appBar = false,
      required this.bodyData,
      this.showDrawer = false});

  @override
  Widget build(BuildContext context) {
    RxBool homeCheck = false.obs;
    RxBool activityCheck = false.obs;
    RxBool settingsCheck = false.obs;
    RxBool profileCheck = false.obs;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Logo Container
        flexibleSpace: SizedBox(
          height: 55,
          child: Image.asset('assets/images/logo.png'),
        ).paddingOnly(top: 25, right: Get.width / 1.5),

        iconTheme:
            const IconThemeData(color: UIDataColors.commonColor, size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,

        // Bottom Border
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(8), // Adjust the height of the border
          child: Container(
            color: UIDataColors.commonColor, // Color of the border
            height: 8,
            width: Get.width / 1.07,
          ),
        ),

        // title: const Text('Test'),
      ),

      // Drawer
      endDrawer: showDrawer ? MyDrawer() : null,
      body: bodyData,

      // Bottom Bar
      bottomNavigationBar: Container(
        // color: const Color.fromARGB(255, 242, 243, 244),
        height: 160,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                homeCheck.value = true;
                activityCheck.value = false;
                settingsCheck.value = false;
                profileCheck.value = false;
              },
              child: Obx(
                () => BottomNavContainer(
                    height: 70,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: homeCheck.value
                              ? UIDataColors.commonColor
                              : Colors.grey,
                          size: 40,
                        ),
                        Text('Home',
                            style: homeCheck.value
                                ? UIDataTextStyles.BottomNavHoverStyle
                                : UIDataTextStyles.BottomNavStyle)
                      ],
                    )).marginOnly(left: 20),
              ),
            ),
            InkWell(
              onTap: () {
                homeCheck.value = false;
                activityCheck.value = true;
                settingsCheck.value = false;
                profileCheck.value = false;
                Get.toNamed(Routes.activity);
              },
              child: Obx(
                () => BottomNavContainer(
                    height: 70,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.graphic_eq,
                          color: activityCheck.value
                              ? UIDataColors.commonColor
                              : Colors.grey,
                          size: 40,
                        ),
                        Text('Activity',
                            style: activityCheck.value
                                ? UIDataTextStyles.BottomNavHoverStyle
                                : UIDataTextStyles.BottomNavStyle)
                      ],
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                homeCheck.value = false;
                activityCheck.value = false;
                settingsCheck.value = true;
                profileCheck.value = false;
              },
              child: Obx(
                () => BottomNavContainer(
                    height: 70,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: settingsCheck.value
                              ? UIDataColors.commonColor
                              : Colors.grey,
                          size: 40,
                        ),
                        Text('Settings',
                            style: settingsCheck.value
                                ? UIDataTextStyles.BottomNavHoverStyle
                                : UIDataTextStyles.BottomNavStyle)
                      ],
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                homeCheck.value = false;
                activityCheck.value = false;
                settingsCheck.value = false;
                profileCheck.value = true;
              },
              child: Obx(
                () => BottomNavContainer(
                    height: 70,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: profileCheck.value
                              ? UIDataColors.commonColor
                              : Colors.grey,
                          size: 40,
                        ),
                        Text('Profile',
                            style: profileCheck.value
                                ? UIDataTextStyles.BottomNavHoverStyle
                                : UIDataTextStyles.BottomNavStyle)
                      ],
                    )).paddingOnly(right: 20),
              ),
            ),
          ],
        ),
      ).marginOnly(bottom: 0),
    );
  }
}
