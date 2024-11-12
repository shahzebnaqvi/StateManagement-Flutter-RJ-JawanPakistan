import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:statemanagement_flutter/ui/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                model.incrementCount();
              },
              child: Icon(Icons.add),
            ),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "${model.counter}",
                    style: TextStyle(fontSize: 50),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        model.navigatetoAbout();
                      },
                      child: Text("Navigate to About"))
                ],
              ),
            ),
          );
        });
  }
}
