import 'package:flutter/material.dart';
import 'package:flutter_ai_voice_assistant/palette.dart';
import 'package:flutter_ai_voice_assistant/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VoxAI',
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Palette.whiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Palette.whiteColor,
        ),
      ),
      home: const HomePage(),
    );
  }
}
