import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/second_screen.dart';
import 'package:getx_tutorial/theme_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ThemeController themeController =
      Get.find(); // Find the theme controller

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Vertically center
          children: [
            Card(
              child: ListTile(
                title: const Text('Change Theme'),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).cardColor,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.light_mode),
                            title: const Text('Light Theme'),
                            onTap: () {
                              themeController.toggleTheme(false); // Light theme
                              Get.back();
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.dark_mode),
                            title: const Text('Dark Theme'),
                            onTap: () {
                              themeController.toggleTheme(true); // Dark theme
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20), // Add some space between the elements
            TextButton(
              onPressed: () {
                Get.to(
                    const SecondScreen()); // Navigates back to the previous screen
              },
              child: const Text('Go to home screen'),
            ),
          ],
        ),
      ),
    );
  }
}
