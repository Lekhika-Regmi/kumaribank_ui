import 'package:flutter/material.dart';

import 'home_page.dart';
import 'theme.dart'; // assuming the above code is in theme.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kumari Bank UI Clone',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system, // or ThemeMode.light
      home: HomePage(),
    );
  }
}
