import 'package:flutter/material.dart';
import 'package:flutter_calculator/theme/theme_provider.dart';
import 'calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        home: const CalculatorScreen());
  }
}
