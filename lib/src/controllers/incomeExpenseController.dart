import 'package:get/get.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

class IncomeExpenseController extends GetxController {
  var incomeExpenseData;
  RxBool loader = false.obs;
  RxBool isUpdate = false.obs;
  var data;
  var editId;
  var totalIncome = 0.0.obs;
  var totalExpense = 0.0.obs;
  var expenseForTotal = [];
  var incomeForTotal = [];

  @override
  void onInit() {
    getData();

    var a = 'lllj';
    if (a.contains('j')) {}
    super.onInit();
  }

  void delete() async {
    print(editId);
      expenseForTotal = [];
    incomeForTotal = [];
    await apiFetcher('Delete', '/api/expense/$editId');
    getData();
  }

  void getData() async {
    loader.value = false;
    var data = await apiFetcher('Get', '/api/expense');
    // void test() async {

    // }
    incomeExpenseData = data['data'];
// Expense
    for (var i = 0; i < incomeExpenseData.length; i++) {
      // if (incomeExpenseData[i]['income'] == 0 ? incomeExpenseData[i]['expenseamount']) {

      // }
      expenseForTotal.add(
          '${incomeExpenseData[i]['income'] == 0 ? '${incomeExpenseData[i]['expenseamount']}' : 0}');
    }
// Income
    for (var i = 0; i < incomeExpenseData.length; i++) {
      incomeForTotal.add(
          '${incomeExpenseData[i]['income'] == 1 ? '${incomeExpenseData[i]['expenseamount']}' : 0}');
    }
    print('expense $expenseForTotal');
    print('income $incomeForTotal');
// Sum of Total Expense
    () {
      List<double> values = expenseForTotal
          .where((str) => str.isNotEmpty)
          .map((str) =>
              double.tryParse(str) ?? 0) // Convert to double or default to 0
          .toList();

      // Sum the values
      double sumOfValues =
          values.fold(0, (previousValue, element) => previousValue + element);
      totalExpense.value = sumOfValues;
      print(totalExpense.value);
    }();
// Sum of Total Income
     () {
      List<double> values = incomeForTotal
          .where((str) => str.isNotEmpty)
          .map((str) =>
              double.tryParse(str) ?? 0) // Convert to double or default to 0
          .toList();

      // Sum the values
      double sumOfValues =
          values.fold(0, (previousValue, element) => previousValue + element);
      totalIncome.value = sumOfValues;
      print(totalIncome.value);
    }();
    loader.value = true;
  }
}
