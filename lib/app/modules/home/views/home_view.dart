import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/ba_app_layouts.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return baMainLayout(
      hasDrawer: false,
      body: const Center(
        child: Text("Home View"),
      ),
      hasFloatingActionButton: false,
    );
  }
}
