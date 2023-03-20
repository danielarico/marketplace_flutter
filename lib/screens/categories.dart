import 'package:flutter/material.dart';

import '../widgets/category.dart';

class Categories extends StatelessWidget {
  final String pageTitle = 'Marketplace';
  final String fashionImageRoute = 'assets/images/cat_moda.jpg';
  final String makeupImageRoute = 'assets/images/cat_maquillaje.jpg';
  final String accesoriesImageRoute = 'assets/images/cat_accesorios.jpg';

  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Category> elements = [
      Category(
        text: 'Moda',
        imageRoute: fashionImageRoute,
        onTap: () => print('Moda'),
      ),
      Category(
        text: 'Maquillaje',
        imageRoute: makeupImageRoute,
        onTap: () => print('Maquillaje'),
      ),
      Category(
        text: 'Accesorios',
        imageRoute: accesoriesImageRoute,
        onTap: () => print('Accesorios'),
      ),
      Category(
        text: 'Accesorios',
        imageRoute: accesoriesImageRoute,
        onTap: () => print('Accesorios'),
      ),
      Category(
        text: 'Accesorios',
        imageRoute: accesoriesImageRoute,
        onTap: () => print('Accesorios'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          pageTitle,
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        padding: const EdgeInsets.all(20),
        children: elements,
      ),
    );
  }
}
