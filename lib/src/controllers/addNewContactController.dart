import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

class AddNewContactController extends GetxController {
  dynamic refValue;
  TextEditingController name = TextEditingController();
  TextEditingController lastnam = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController emai = TextEditingController();
  TextEditingController addres = TextEditingController();
  TextEditingController cit = TextEditingController();
  TextEditingController stat = TextEditingController();
  TextEditingController zipp = TextEditingController();

  void addContact() async {
    final difficulty = refValue;
    final firstname = name.text.trim();
    final lastname = lastnam.text.trim();
    final phone = phoneNo.text.trim();
    final email = emai.text.trim();
    final address = addres.text.trim();
    final city = cit.text.trim();
    final state = stat.text.trim();
    final zip = zipp.text.trim();

    // Validation
    if (firstname.isEmpty ||
        difficulty.isEmpty ||
        lastname.isEmpty ||
        phone.isEmpty ||
        email.isEmpty ||
        address.isEmpty ||
        city.isEmpty ||
        state.isEmpty ||
        zip.isEmpty) {
      Get.snackbar('Error', 'All fields are required',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      return;
    }

    if (state.length > 3) {
      Get.snackbar('Error', 'State field required 2-letters',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      return;
    }
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(email)) {
      Get.snackbar('Error', 'Enter a valid email',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      return;
    }

    var obj = {
      "firstname": firstname,
      "lastname": lastname,
      "phone": phone,
      "email": email,
      "difficulty": difficulty,
      "address": address,
      "city": city,
      "state": state,
      "zip": zip,
    };

    var res = await apiFetcher('Post', '/api/contact', obj);

    refValue = '';
    name.text = '';
    lastnam.text = '';
    phoneNo.text = '';
    emai.text = '';
    addres.text = '';
    cit.text = '';
    stat.text = '';
    zipp.text = '';
    Get.back();
  }
}
