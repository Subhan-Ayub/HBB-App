import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/utils/routes/routes.dart';

class SignUpController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController companynameController = TextEditingController();
  TextEditingController acodeController = TextEditingController();
  TextEditingController firstphonenumberController = TextEditingController();
  TextEditingController secondphonenumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool passwordVisibility = false.obs;
  RxBool chk = false.obs;

  void submitForm() {
    final username = usernameController.text.trim();
    final firstname = firstnameController.text.trim();
    final lastname = lastnameController.text.trim();
    final email = emailController.text.trim();
    final companyname = companynameController.text.trim();
    final acode = acodeController.text.trim();
    final firstphonenumber = firstphonenumberController.text.trim();
    final secondphonenumber = secondphonenumberController.text.trim();
    final password = passwordController.text.trim();

    // Validation
    if (username.isEmpty ||
        firstname.isEmpty ||
        lastname.isEmpty ||
        email.isEmpty ||
        companyname.isEmpty ||
        acode.isEmpty ||
        firstphonenumber.isEmpty ||
        secondphonenumber.isEmpty ||
        password.isEmpty) {
      Get.snackbar('Error', 'All fields are required',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      return;
    }
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(email)) {
      // Show an error message for invalid email format
      Get.snackbar('Error', 'Enter a valid email',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      return;
    }

    // print('Username: $username');
    // print('Firstname: $firstname');
    // print('Email: $email');
    // print('Password: $password');
    // print('Phone Number: $firstphonenumber');

    usernameController.text = '';
    firstnameController.text = '';
    lastnameController.text = '';
    emailController.text = '';
    companynameController.text = '';
    acodeController.text = '';
    firstphonenumberController.text = '';
    secondphonenumberController.text = '';
    passwordController.text = '';

    Get.offAndToNamed(Routes.signin);
  }
}
