import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statemanagement_flutter/app/app.locator.dart';
import 'package:statemanagement_flutter/app/app.router.dart';

class HomeViewModel extends BaseViewModel {
  final navigationservice = locator<NavigationService>();

  var counter = 0;
  incrementCount() {
    counter++;
    rebuildUi();
    print(counter);
  }

  navigatetoAbout() {
    navigationservice.navigateToAboutUsView();
  }
}
