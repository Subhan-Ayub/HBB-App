import 'package:get/get.dart';
import '../controllers/DailyExpenseController.dart';

class DailyExpenseBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<DailyExpenseController>(() => DailyExpenseController());
  }
}