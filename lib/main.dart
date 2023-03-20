import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';
import 'package:marketplace_flutter/screens/categories.dart';
import 'package:marketplace_flutter/widgets/category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace demo',
      theme: ThemeData(
        primaryColor: AppColors.PURPLE,
        appBarTheme: const AppBarTheme(color: AppColors.PURPLE),
        scaffoldBackgroundColor: AppColors.CREAM,
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.PURPLE,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.PURPLE,
        ),
      ),
      home: const MyHomePage(title: 'Marketplace'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Categories();
  }
}
