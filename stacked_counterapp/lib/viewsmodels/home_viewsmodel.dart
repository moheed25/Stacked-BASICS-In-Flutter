import 'package:stacked/stacked.dart';
import 'package:stacked_counterapp/App/app.locator.dart';
import 'package:stacked_counterapp/Services/Counter_services.dart';


class HomeViewModel extends BaseViewModel {
final counterService = locator<CounterService>();
}