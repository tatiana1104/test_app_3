import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const PackAndGoApp());
}

class PackAndGoApp extends StatelessWidget {
  const PackAndGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pack & Go',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF27121),
          primary: const Color(0xFFF27121),
        ),
        fontFamily: 'Roboto', // O la fuente que prefieras
      ),
      home: const SplashScreen(),
    );
  }
}
