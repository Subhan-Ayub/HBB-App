import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddIncomeExpenseController extends GetxController {
  TextEditingController dateinput = TextEditingController();
  TextEditingController incomeSource = TextEditingController();
  TextEditingController amount = TextEditingController();
  dynamic selectedReason;
  dynamic selectedIncomeExpense;
  RxBool isExpense = false.obs;

  void save() {
    if (dateinput.text.isEmpty) {
      Get.snackbar('Error', 'Select Date',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      return;
    }
    if (amount.text.isEmpty) {
      Get.snackbar('Error', 'Enter Amount',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      return;
    }
    if (selectedIncomeExpense == null) {
      Get.snackbar('Error', 'Select Type Income or Expense',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      return;
    }

    if (selectedIncomeExpense == 'Expense') {
      if (selectedReason == null) {
        Get.snackbar('Error', 'Select Expense reason',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
        return;
      }
    }

    if (selectedIncomeExpense == 'Income') {
      if (incomeSource.text.isEmpty) {
        Get.snackbar('Error', 'Please Tell your source of income',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
        return;
      }
    }
  }
}
