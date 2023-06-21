import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/core/bindings/initial_binding.dart';
import 'app/core/theme/ba_app_theme.dart';
import 'app/routes/app_pages.dart';
import 'generated/locales.g.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic Application",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      initialBinding: InitialBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      translationsKeys: AppTranslation.translations,
      locale: const Locale("en", "US"),
    ),
  );
}
