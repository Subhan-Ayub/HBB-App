import 'package:get/get.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

class IncomeExpenseController extends GetxController {
  var incomeExpenseData;
  RxBool loader = false.obs;
  @override
  void onInit() async {
    var data = await apiFetcher('Get', '/api/expense/17535');
    loader.value = true;
    incomeExpenseData = data['data'];
    print(incomeExpenseData);
    super.onInit();
  }
}
