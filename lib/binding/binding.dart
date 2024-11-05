import 'package:get/get.dart';
import 'package:statemanagement_flutter/controllers/home_controllers/home_controller.dart';

class DependBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
