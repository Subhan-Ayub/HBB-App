import 'package:hbb/src/controllers/homeController.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<HomeController>(() => HomeController());
  }
}