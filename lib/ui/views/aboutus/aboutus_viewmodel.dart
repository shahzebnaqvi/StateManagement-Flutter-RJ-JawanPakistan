import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statemanagement_flutter/app/app.locator.dart';

class AboutUsViewModel extends BaseViewModel {
  final navigationservice = locator<NavigationService>();
  backScreen() {
    navigationservice.back();
  }
}
