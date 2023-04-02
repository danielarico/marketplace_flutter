import 'package:flutter/material.dart';

import '../widgets/subcategory.dart';

class Subcategories extends StatelessWidget {
  final String pageTitle = 'Marketplace';
  final String fashionImageRoute = 'assets/images/cat_clothes.jpg';
  final String makeupImageRoute = 'assets/images/cat_makeup.jpg';
  final String accesoriesImageRoute = 'assets/images/cat_accessories.jpg';
  final String personalCareImageRoute = 'assets/images/cat_personal_care.jpg';
  final String decorationImageRoute = 'assets/images/cat_decoration.jpg';
  final String wellnessImageRoute = 'assets/images/cat_wellness.jpg';
  final String selfgrowthImageRoute = 'assets/images/cat_self_growth.jpg';

  const Subcategories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Subcategory> elements = [
      Subcategory(
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
      // body: ListView.count(
      //   crossAxisCount: 2,
      //   childAspectRatio: 0.6,
      //   crossAxisSpacing: 15,
      //   mainAxisSpacing: 15,
      //   padding: const EdgeInsets.all(20),
      //   children: elements,
      // ),
    );
  }
}
