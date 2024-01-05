import 'package:flutter/material.dart';
import 'package:hbb/src/controllers/signupController.dart';
import 'package:hbb/src/ui/widgets/commonClasses.dart';
import 'package:hbb/src/utils/routes/routes.dart';
import 'package:hbb/src/utils/uidata/color.dart';
import 'package:hbb/src/utils/uidata/container_decor.dart';
import 'package:hbb/src/utils/uidata/text_styles.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final SignUpController _ = Get.put(SignUpController());
  RxBool chk = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/vecright.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              SizedBox(
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),

              // BackgroundContainer
              Container(
                width: Get.width / 1.1,
                // height: 550,
                decoration: UIDataDecoration.boxdecor,
                child: Column(
                  children: [
                    const Text(
                      'SignUp',
                      style: UIDataTextStyles.HeadingStyle,
                    ).paddingOnly(top: 30, bottom: 20),

                    // Name TextField
                    CustomTextField(
                        width: Get.width / 1.5,
                        controller: _.fullnameController,
                        hintText: 'Enter full name'),

                    // Username TextField
                    CustomTextField(
                            width: Get.width / 1.5,
                            controller: _.usernameController,
                            hintText: 'Enter Username')
                        .paddingSymmetric(vertical: 30),

                    // Email TextField
                    CustomTextField(
                        width: Get.width / 1.5,
                        controller: _.emailController,
                        hintText: 'Enter email address'),

                    // Password TextField
                    CustomTextField(
                            width: Get.width / 1.5,
                            controller: _.passwordController,
                            hintText: 'Enter Password')
                        .paddingSymmetric(vertical: 30),

                    // Re-Password TextField
                    CustomTextField(
                        width: Get.width / 1.5,
                        controller: _.reEnterPasswordController,
                        hintText: 'Enter Re-Password'),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Radio Button
                        InkWell(
                          onTap: () {
                            chk.value = !chk.value;
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: UIDataColors.commonColor,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: Obx(
                              () => Container(
                                decoration: BoxDecoration(
                                    color: chk.value
                                        ? UIDataColors.commonColor
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                width: 15,
                                height: 15,
                              ),
                            ),
                          ),
                        ).paddingOnly(right: 10),

                        const Text(
                          'I have read & agree to the terms & conditions',
                          style: TextStyle(
                              color: UIDataColors.commonColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ).paddingSymmetric(vertical: 15),
                    // Sign UP Button
                    FillButton(
                      color: UIDataColors.commonColor,
                      width: Get.width / 1.5,
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(fontSize: 20),
                      ),
                    ).paddingOnly(bottom: 40)
                  ],
                ),
              ).paddingOnly(top: 20),

              // Sign In Button
              OutlineButton(
                  width: Get.width / 1.5,
                  color: null,
                  border: Border.all(
                    width: 2,
                    color: UIDataColors.commonColor,
                  ),
                  child: InkWell(
                      onTap: () {
                        Get.offAllNamed(Routes.home);
                      },
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontSize: 20,
                          color: UIDataColors.commonColor,
                        ),
                      ))).paddingOnly(top: 30)
            ],
          ),
        ),
      ),
    );
  }
}
