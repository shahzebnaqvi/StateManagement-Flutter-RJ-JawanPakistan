import 'package:get/get.dart';

class AboutController extends GetxController {
  var data;
  @override
  void onInit() {
    super.onInit();
    data = Get.arguments["data1"];
    print("oninit");
  }
}
