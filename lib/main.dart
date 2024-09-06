import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/home_screen.dart';
import 'package:getx_tutorial/theme_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController =
        Get.put(ThemeController()); // Initialize the theme controller

    return Obx(() => GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData.light(), // Light Theme
          darkTheme: ThemeData.dark(), // Dark Theme
          themeMode: themeController.isDarkMode.value
              ? ThemeMode.dark
              : ThemeMode.light, // Reactive theme based on controller
          home: const HomeScreen(),
        ));
  }
}
