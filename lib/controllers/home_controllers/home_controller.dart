import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends GetxController {
  int totalprice =0;
  // int count = 0;
  // incrementCount() {
  //   count++;
  //   update();
  // }
  RxInt count = 0.obs;
  incrementCount() {
    // count.value++;
    count.value = count.value + 33;
  }
}
