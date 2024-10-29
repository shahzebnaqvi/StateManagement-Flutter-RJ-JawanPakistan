import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement_flutter/controllers/home_controllers/home_controller.dart';
import 'package:statemanagement_flutter/utils/color_constant.dart';
import 'package:statemanagement_flutter/utils/font_constant.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeController homeControl = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<HomeController>(builder: (GetxContext) {
        return Center(
          child: Text("${homeControl.count.value}",
              style: TextStyle(
                color: ColorConstant.primaryColor,
                fontSize: FontConstant.bigHeadingTextSize,
              )),
        );
      }),
      // Obx(
      //   () => Center(
      //     child: Text(
      //       "${homeControl.count.value}",
      //       style: TextStyle(
      //         color: ColorConstant.primaryColor,
      //         fontSize: FontConstant.bigHeadingTextSize,
      //       ),
      //     ),
      //   ),
      // ),

      // GetBuilder<HomeController>(
      //     // init: homeControl,
      //     builder: (getcontext) {
      //   return Center(
      //     child: Text(
      //       "${homeControl.count}",
      //       style: TextStyle(
      //         color: ColorConstant.primaryColor,
      //         fontSize: FontConstant.bigHeadingTextSize,
      //       ),
      //     ),
      //   );
      // }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeControl.incrementCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
