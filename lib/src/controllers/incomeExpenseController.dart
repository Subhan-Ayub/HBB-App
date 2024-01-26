import 'package:get/get.dart';
import 'package:hbb/src/utils/helpers/api_helper.dart';

class IncomeExpenseController extends GetxController {
  var incomeExpenseData;
  RxBool loader = false.obs;
  RxBool isUpdate = false.obs;
  var data;
  var editId;

  // var data = [
  //   {
  //     "id": "17538",
  //     "members_idmembers": 635,
  //     "expenseamount": 4667,
  //     "expensereason": "Home Office Maintainence",
  //     "expensedate": "2024-01-25",
  //     "income": 1
  //   },
  //   {
  //     "id": "17537",
  //     "members_idmembers": 635,
  //     "expenseamount": 4667,
  //     "expensereason": "Maintainence",
  //     "expensedate": "2024-01-25",
  //     "income": 1
  //   },
  //   {
  //     "id": "17536",
  //     "members_idmembers": 635,
  //     "expenseamount": 4667,
  //     "expensereason": "Office",
  //     "expensedate": "2024-01-25",
  //     "income": 0
  //   },
  //   {
  //     "id": "17535",
  //     "members_idmembers": 635,
  //     "expenseamount": 4667,
  //     "expensereason": "Home",
  //     "expensedate": "2024-01-25",
  //     "income": 1
  //   },
  //   {
  //     "id": "17534",
  //     "members_idmembers": 635,
  //     "expenseamount": 4667,
  //     "expensereason": "Office Maintainence",
  //     "expensedate": "2024-01-25",
  //     "income": 1
  //   },
  // ];

  // @override
  // void onInit() {
  //   dataa = data;
  //   super.onInit();
  // }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    var data = await apiFetcher('Get', '/api/expense');
    loader.value = true;
    incomeExpenseData = data['data'];
  }
}
