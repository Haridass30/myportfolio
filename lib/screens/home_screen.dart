import 'package:flutter/material.dart';
import 'about_screen.dart';
import 'skills_screen.dart';
import 'projects_screen.dart';
import 'contact_screen.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DevFolio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Replace with your image
            ),
            const SizedBox(height: 20),
            const Text(
              'Hi, I’m [Your Name]!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Flutter Developer | Problem Solver',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                CustomButton(
                  text: 'About',
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const AboutScreen())),
                ),
                CustomButton(
                  text: 'Skills',
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const SkillsScreen())),
                ),
                CustomButton(
                  text: 'Projects',
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ProjectsScreen())),
                ),
                CustomButton(
                  text: 'Contact',
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const ContactScreen())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
