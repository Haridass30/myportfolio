import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Me')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Get in Touch',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              subtitle: const Text('your.email@example.com'),
              onTap: () => _launchURL('mailto:your.email@example.com'),
            ),
            ListTile(
              leading: const Icon(Icons.code),
              title: const Text('GitHub'),
              subtitle: const Text('github.com/yourusername'),
              onTap: () => _launchURL('https://github.com/yourusername'),
            ),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('LinkedIn'),
              subtitle: const Text('linkedin.com/in/yourusername'),
              onTap: () => _launchURL('https://linkedin.com/in/yourusername'),
            ),
          ],
        ),
      ),
    );
  }
}
