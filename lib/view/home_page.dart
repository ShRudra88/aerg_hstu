import 'package:aerg_hstu/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('AERG HSTU'),
        actions: [
          IconButton(
            icon: Icon(themeController.isDarkMode.value ? Icons.dark_mode : Icons.light_mode),
            onPressed: () {
              themeController.toggleTheme();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'The HSTU Automated Exam Routine Generator is a specialized software designed to streamline the process of creating optimal exam schedules for Hajee Mohammad Danesh Science and Technology University. Users input relevant information, and the software utilizes algorithms to efficiently generate and store well-organized routines. This user-friendly tool simplifies the task of creating and managing exam schedules for HSTU.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Power',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Simplifying the complex process through automated algorithms.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '2. It must generate an optimized routine.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Limitation',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Add limitations of AERG system regarding ability to generate optimized routine.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
