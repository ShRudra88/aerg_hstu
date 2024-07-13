import 'package:aerg_hstu/consts/app_theme_data.dart';
import 'package:aerg_hstu/controller/theme_controller.dart';
import 'package:aerg_hstu/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AergApp extends StatelessWidget {
  const AergApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: themeController.theme,
      initialRoute: Routes.splashScreen,
      getPages: Routes.routes,
    );
  }
}
