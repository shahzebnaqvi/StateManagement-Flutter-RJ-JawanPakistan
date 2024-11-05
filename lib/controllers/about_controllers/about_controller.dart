import 'package:get/get.dart';

class AboutController extends GetxController {
  var data;
  @override
  void onInit() {
    super.onInit();
    data = Get.arguments["data1"];
    print("oninit called");
  }

  @override
  void onReady() {
    print("ready called");
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    print("onclose called");

    // TODO: implement onClose
    super.onClose();
  }
}
