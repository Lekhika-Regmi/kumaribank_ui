import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';
import 'theme.dart'; // assuming the above code is in theme.dart

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light, // Android
      statusBarBrightness: Brightness.dark, // iOS
    ),
  );
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
      themeMode: ThemeMode.light,
      // or ThemeMode.light
      home: HomePage(),
    );
  }
}
