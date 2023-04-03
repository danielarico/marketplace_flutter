import 'package:flutter/material.dart';
import 'package:marketplace_flutter/pages/products_list.dart';

import '../widgets/subcategory.dart';

class Subcategories extends StatelessWidget {
  final String categoryName;
  final List subcategories;

  const Subcategories({
    super.key,
    required this.categoryName,
    required this.subcategories,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
        ),
      ),
      body: ListView.builder(
        itemCount: subcategories.length,
        itemBuilder: (BuildContext context, int index) {
          return Subcategory(
            text: subcategories[index]["text"],
            imageRoute: subcategories[index]["imageRoute"],
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductsList(
                  subcategoryName: subcategories[index]["text"],
                  products: subcategories[index]["products"],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
