import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Me')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'I’m a passionate Flutter developer with [X] years of experience building cross-platform apps. I love solving complex problems and creating user-friendly interfaces.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Experience:\n- [Company/Project Name] - [Role] ([Year])\n- Freelance Developer - [Details]',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
