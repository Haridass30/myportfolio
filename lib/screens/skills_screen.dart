import 'package:flutter/material.dart';
import '../widgets/skill_card.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  final List<String> skills = const [
    'Flutter',
    'Dart',
    'Firebase',
    'REST APIs',
    'Git',
    'UI/UX Design',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Skills')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: skills.length,
          itemBuilder: (context, index) => SkillCard(skill: skills[index]),
        ),
      ),
    );
  }
}
