import 'package:flutter/material.dart';

import '../widgets/category.dart';

class Categories extends StatelessWidget {
  final Text pageTitle;

  Categories({
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: pageTitle,
      ),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Category>[],
        ),
      ),
    );
  }
}
