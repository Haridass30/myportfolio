import 'package:flutter/material.dart';
import '../models/project.dart';

class ProjectTile extends StatelessWidget {
  final Project project;

  const ProjectTile({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(project.title,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(project.description),
        trailing: project.link != null
            ? const Icon(Icons.link, color: Colors.blue)
            : null,
      ),
    );
  }
}

class Project {
  final String title;
  final String description;
  final String? link;

  Project({required this.title, required this.description, this.link});
}
