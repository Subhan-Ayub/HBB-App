import 'package:get/get.dart';

import '../utils/helpers/api_helper.dart';

class ContactListController extends GetxController {
   RxBool loader = false.obs;
  var data;
  @override
  void onInit() async {
    var contactDetails = await apiFetcher('Get', '/api/contact');
    data = (contactDetails['data']);
    loader.value = true;
    super.onInit();
  }
}
