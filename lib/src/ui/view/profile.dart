import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/controllers/profileController.dart';
import 'package:hbb/src/ui/widgets/commonScaffold.dart';
import 'package:hbb/src/utils/routes/routes.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  final ProfileController _ = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      color: Colors.white,
      bodyData: Container(
        height: Get.height,
        width: Get.width,
        // color: Colors.amber,
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: Get.height * .12,
              width: Get.width,
              // color: Colors.blueGrey,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: Get.height * .07,
                    width: Get.width * .2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
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
                        'Welcome',
                        style: TextStyle(
                            fontSize: Get.width * .05, color: Colors.grey),
                      ),
                      Text(
                        'Honey Singh',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: Get.width * .03),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Get.defaultDialog(
                        title: 'Log Out',
                        content: Text('Are you sure u want to log out?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              _.box.remove('success');
                              // box.write("${box.read('userdata')}:R", mc.recen);
                              // box.write("${box.read('userdata')}:L", mc.library);
                              Get.offAllNamed(Routes.login);
                            },
                            child: Text('Log out'),
                          ),
                        ],
                      );
                    },
                    icon: Icon(
                      Icons.logout_outlined,
                      color: Colors.grey,
                      size: Get.width * 0.07,
                    ),
                  )
                ],
              ),
            ).marginSymmetric(vertical: Get.height * 0.02),
            //1
            SizedBox(
              height: Get.height * .08,
              child: Row(
                children: [
                  Container(
                    height: Get.height / 9,
                    width: Get.width / 9,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: Get.width * 0.06,
                    ),
                  ),
                  Text(
                    'Profile',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: Get.width * .035,
                    ),
                  ).marginSymmetric(horizontal: Get.width * .02),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: Get.width * 0.04,
                    ),
                  )
                ],
              ),
            ),

            //2
            SizedBox(
              height: Get.height * .08,
              child: Row(
                children: [
                  Container(
                    height: Get.height / 9,
                    width: Get.width / 9,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                      size: Get.width * 0.06,
                    ),
                  ),
                  Text(
                    'My Activity Calender',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: Get.width * .035,
                    ),
                  ).marginSymmetric(horizontal: Get.width * .02),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: Get.width * 0.04,
                    ),
                  )
                ],
              ),
            ),

            //3
            SizedBox(
              height: Get.height * .08,
              child: Row(
                children: [
                  Container(
                    height: Get.height / 9,
                    width: Get.width / 9,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: Get.width * 0.06,
                    ),
                  ),
                  Text(
                    'Setting',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: Get.width * .035,
                    ),
                  ).marginSymmetric(horizontal: Get.width * .02),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: Get.width * 0.04,
                    ),
                  )
                ],
              ),
            ),

            //4
            SizedBox(
              height: Get.height * .08,
              child: Row(
                children: [
                  Container(
                    height: Get.height / 9,
                    width: Get.width / 9,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.question_mark_outlined,
                      color: Colors.white,
                      size: Get.width * 0.06,
                    ),
                  ),
                  Text(
                    'Reports',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: Get.width * .035,
                    ),
                  ).marginSymmetric(horizontal: Get.width * .02),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: Get.width * 0.04,
                    ),
                  )
                ],
              ),
            ),

            //5
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.contactUs);
              },
              child: SizedBox(
                height: Get.height * .08,
                child: Row(
                  children: [
                    Container(
                      height: Get.height / 9,
                      width: Get.width / 9,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.person_4_outlined,
                        color: Colors.white,
                        size: Get.width * 0.06,
                      ),
                    ),
                    Text(
                      'Contact Us',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: Get.width * .035,
                      ),
                    ).marginSymmetric(horizontal: Get.width * .02),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.grey,
                        size: Get.width * 0.04,
                      ),
                    )
                  ],
                ),
              ),
            ),

            //6
            SizedBox(
              height: Get.height * .08,
              child: Row(
                children: [
                  Container(
                    height: Get.height / 9,
                    width: Get.width / 9,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: Get.width * 0.06,
                    ),
                  ),
                  Text(
                    'Logout',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: Get.width * .035,
                    ),
                  ).marginSymmetric(horizontal: Get.width * .02),
                ],
              ),
            ),
          ],
        ),
      )
          .paddingSymmetric(vertical: Get.height * 0.01)
          .marginSymmetric(horizontal: Get.height * 0.03),
    );
  }
}
