import 'package:flutter/material.dart';
import 'package:portfolio/features/appbar/presentation/components/app_bar_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBarComponent());
  }
}
