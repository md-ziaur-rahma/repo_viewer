import 'package:flutter/material.dart';

import 'ba_app_colors.dart';

Widget baBlankLayout({required Widget body}) {
  return Scaffold(body: SafeArea(child: body));
}

Widget baMainLayout(
    {PreferredSizeWidget? appbar,
    required bool hasDrawer,
    required Widget body,
    required bool hasFloatingActionButton,
    Widget? floatingActionButton}) {
  return Scaffold(
    backgroundColor: AppColors.whiteE5,
    appBar: appbar,
    drawer: hasDrawer ? const Drawer() : null,
    body: body,
    floatingActionButton: hasFloatingActionButton ? floatingActionButton : null,
  );
}
