import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:statemanagement_flutter/ui/views/aboutus/aboutus_viewmodel.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AboutUsViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("${model.cartService.countervalue}"),
                  ElevatedButton(
                      onPressed: () {
                        model.backScreen();
                      },
                      child: Text("back"))
                ],
              ),
            ),
          );
        });
  }
}
