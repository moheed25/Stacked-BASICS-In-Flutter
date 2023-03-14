import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_counterapp/Services/Counter_services.dart';

import 'package:stacked_counterapp/views/Counter_View.dart';
import 'package:stacked_counterapp/views/Home_View.dart';

import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(
    page: CounterView,
    initial: true,
  ),
  MaterialRoute(
    page: HomeView,
  )
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterService),
])
class App {}