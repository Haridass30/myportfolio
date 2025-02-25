import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const DevFolioApp());
}

class DevFolioApp extends StatelessWidget {
  const DevFolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevFolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const HomeScreen(),
    );
  }
}
