import 'package:stacked/stacked.dart';
import 'package:stacked_counterapp/App/app.locator.dart';
import 'package:stacked_counterapp/App/app.router.dart';
import 'package:stacked_counterapp/Services/Counter_services.dart';

import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }

  navigateToHome() {
    navigationService.navigateTo(Routes.homeView);
  }
}