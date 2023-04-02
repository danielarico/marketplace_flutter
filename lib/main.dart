import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';
import 'package:marketplace_flutter/pages/categories.dart';
import 'package:marketplace_flutter/pages/subcategories.dart';
import 'package:marketplace_flutter/utils/utils.dart';

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
        primaryColor: AppColors.PRIMARY_01,
        appBarTheme: const AppBarTheme(color: AppColors.PRIMARY_01),
        scaffoldBackgroundColor: AppColors.PRIMARY_02,
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.PRIMARY_01,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.PRIMARY_01,
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
  final String configJsonRoute = "assets/config/config.json";
  late Future<Map<String, dynamic>> configJson =
      Utils.readJsonFile(configJsonRoute);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: configJson,
      builder: (ctx, snapshot) {
        if (snapshot.hasData) {
          final json = snapshot.data as Map<String, dynamic>;
          return Categories(
            categories: json["categories"],
          );
        } else {
          return const Center(child: Text("Error"));
        }
      },
    );
  }
}
