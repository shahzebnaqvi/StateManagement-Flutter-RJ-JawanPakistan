import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statemanagement_flutter/app/app.locator.dart';
import 'package:statemanagement_flutter/app/app.router.dart';
import 'package:statemanagement_flutter/services/cart_service.dart';

class HomeViewModel extends BaseViewModel {
  final navigationservice = locator<NavigationService>();
  CartService cartService = locator<CartService>();
  incrementCount() {
    cartService.incrementCountservice();
    rebuildUi();
    // print(counter);
  }

  navigatetoAbout() {
    navigationservice.navigateToAboutUsView();
  }
}
