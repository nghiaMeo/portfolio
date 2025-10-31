import 'package:flutter/material.dart';
import 'package:portfolio/features/appbar/presentation/components/app_bar_component.dart';
import 'package:portfolio/features/summary/presentation/components/summary_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: bodyPage(context));
  }

  Widget bodyPage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBarComponent(),
        SummaryComponent(),
      ],
    );
  }
}
