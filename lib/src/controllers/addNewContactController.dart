import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewContactController extends GetxController {
  dynamic refValue;
  TextEditingController name = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController zip = TextEditingController();
}
