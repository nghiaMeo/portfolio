import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  void scrollTo(GlobalKey key) {
    final targetContext = key.currentContext;
    if (targetContext == null) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final ctx = key.currentContext;
      if (ctx == null) return;

      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        alignment: 0.1, // chừa khoảng trống nhỏ dưới AppBar
      );
    });
  }
}
