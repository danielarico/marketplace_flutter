import 'package:flutter/material.dart';

import '../widgets/category.dart';

class Categories extends StatelessWidget {
  final String pageTitle = 'Marketplace';
  final String fashionImageRoute = 'assets/images/cat_clothes.jpg';
  final String makeupImageRoute = 'assets/images/cat_makeup.jpg';
  final String accesoriesImageRoute = 'assets/images/cat_accessories.jpg';
  final String personalCareImageRoute = 'assets/images/cat_personal_care.jpg';
  final String decorationImageRoute = 'assets/images/cat_decoration.jpg';
  final String wellnessImageRoute = 'assets/images/cat_wellness.jpg';
  final String selfgrowthImageRoute = 'assets/images/cat_self_growth.jpg';

  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Category> elements = [
      Category(
        text: 'Accesorios',
        imageRoute: accesoriesImageRoute,
        onTap: () => print('Accesorios'),
      ),
      Category(
        text: 'Bienestar',
        imageRoute: wellnessImageRoute,
        onTap: () => print('Bienestar'),
      ),
      Category(
        text: 'Crecimiento personal',
        imageRoute: selfgrowthImageRoute,
        onTap: () => print('Crecimiento personal'),
      ),
      Category(
        text: 'Cuidado personal',
        imageRoute: personalCareImageRoute,
        onTap: () => print('Cuidado personal'),
      ),
      Category(
        text: 'Decoración',
        imageRoute: decorationImageRoute,
        onTap: () => print('Decoración'),
      ),
      Category(
        text: 'Maquillaje',
        imageRoute: makeupImageRoute,
        onTap: () => print('Maquillaje'),
      ),
      Category(
        text: 'Ropa',
        imageRoute: fashionImageRoute,
        onTap: () => print('Ropa'),
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
