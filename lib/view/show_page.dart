import 'package:flutter/material.dart';

class ShowPage extends StatelessWidget {
  const ShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Page'),
      ),
      body: const Center(child: Text('Show Page'),),
    );
  }
}