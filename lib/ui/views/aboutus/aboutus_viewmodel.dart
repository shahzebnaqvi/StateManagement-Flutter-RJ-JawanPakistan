import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statemanagement_flutter/app/app.locator.dart';
import 'package:statemanagement_flutter/services/cart_service.dart';

class AboutUsViewModel extends BaseViewModel {
  final navigationservice = locator<NavigationService>();
  final cartService = locator<CartService>();
  
  backScreen() {
    navigationservice.back();
  }
}
