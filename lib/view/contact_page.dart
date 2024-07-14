import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Contact Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              subtitle: const Text('aerghstu@mail.com'),
              onTap: () {
                // Handle tapping email (e.g., open mail client)
              },
            ),
            ListTile(
              leading: const Icon(Icons.public),
              title: const Text('Website'),
              subtitle: const Text('www.aefghstu.com'),
              onTap: () {
                // Handle tapping website (e.g., open browser)
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Feel free to reach out to us for any inquiries or feedback. We look forward to hearing from you!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

