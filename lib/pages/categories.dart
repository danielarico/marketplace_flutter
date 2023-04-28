import 'package:flutter/material.dart';
import 'package:marketplace_flutter/pages/subcategories.dart';

import '../widgets/category.dart';

class Categories extends StatelessWidget {
  final List categories;

  const Categories({
    super.key,
    required this.categories,
  });

  final String pageTitle = 'Marketplace';
  final double pageMargin = 0;

  @override
  Widget build(BuildContext context) {
    const double spacing = 40;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          pageTitle,
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(pageMargin),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: spacing,
          mainAxisSpacing: spacing,
        ),
        itemCount: categories.length,
        itemBuilder: (BuildContext context, index) {
          return Category(
            text: categories[index]["text"],
            imageRoute: categories[index]["imageRoute"],
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Subcategories(
                  categoryName: categories[index]["text"],
                  subcategories: categories[index]["subcategories"],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
