import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_counterapp/viewsmodels/home_viewsmodel.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              //    Text(viewModel.counterService.counterValue.toString()),
                ],
              ),
            ),
          );
        });
  }
}