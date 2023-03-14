import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_counterapp/App/app.locator.dart';
import 'package:stacked_counterapp/App/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_generator/builder.dart';
import 'package:stacked_generator/import_resolver.dart';
import 'package:stacked_generator/utils.dart';
import 'package:build_runner/build_runner.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
