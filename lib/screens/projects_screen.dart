import 'package:flutter/material.dart';
import '../models/project.dart';
import '../widgets/project_tile.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  static const List<Project> projects = [
    Project(
      title: 'E-Commerce App',
      description: 'A cross-platform shopping app built with Flutter and Firebase.',
      link: 'https://github.com/yourusername/ecommerce-app',
    ),
    Project(
      title: 'Task Manager',
      description: 'A productivity app with local storage and notifications.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Projects')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: projects.length,
        itemBuilder: (context, index) => ProjectTile(project: projects[index]),
      ),
    );
  }
}