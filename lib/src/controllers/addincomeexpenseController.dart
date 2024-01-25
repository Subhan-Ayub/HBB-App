import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

class AddIncomeExpenseController extends GetxController {
  TextEditingController dateinput = TextEditingController();
  TextEditingController incomeSource = TextEditingController();
  TextEditingController amount = TextEditingController();
  dynamic selectedReason;
  dynamic selectedIncomeExpense;
  RxBool isExpense = false.obs;

  void save() async {
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

    var obj = {
      "expenseamount": amount.text,
      "incexp": 1, // 0 for expense and 1 for income
      "editreason": "0",
      "incomereason": selectedReason,
      "expensedate": dateinput.text
    };
    // print(dateinput.text);
    await apiFetcher('Post', '/api/expense', obj);

    Get.snackbar('Success', 'Your Incom Expense will created',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.shade400,
        colorText: Colors.white);

    dateinput.text = '';
    amount.text = '';
    selectedReason == '';
    incomeSource.text = '';
    selectedIncomeExpense == '';

    Get.back();
  }
}
