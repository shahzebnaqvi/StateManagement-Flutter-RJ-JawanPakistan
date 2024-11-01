import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:statemanagement_flutter/controllers/about_controllers/about_controller.dart';
import 'package:statemanagement_flutter/controllers/home_controllers/home_controller.dart';
import 'package:statemanagement_flutter/utils/color_constant.dart';

// singleton
class AboutScreen extends StatelessWidget {
  AboutScreen({super.key});
  AboutController aboutControl = Get.put(AboutController());
  HomeController homeControl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back ${aboutControl.data} ${homeControl.count}"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Error",
                  "something went wrong",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: ColorConstant.primaryColor,
                  colorText: ColorConstant.secondaryColor,
                );
              },
              child: Text("SnackBar"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.defaultDialog();
                Get.dialog(Scaffold(
                    backgroundColor: Colors.transparent, body: Text("aa")));
              },
              child: Text("SnackBar"),
            )
          ],
        ),
      ),
    );
  }
}
