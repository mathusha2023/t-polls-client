import 'package:flutter/material.dart';
import "package:t_polls_client/resources/pages/home_page.dart";
import 'package:t_polls_client/resources/themes/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: const MyHomePage(),
    );
  }
}
