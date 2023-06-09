import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';
import 'package:marketplace_flutter/widgets/product_card.dart';

import 'product_detail.dart';

class ProductsList extends StatelessWidget {
  final String subcategoryName;
  final List products;

  const ProductsList({
    super.key,
    required this.subcategoryName,
    required this.products,
  });

  final String emptyText = "No se encontraron productos";
  final double emptyFontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          subcategoryName,
        ),
      ),
      body: products.isEmpty
          ? Center(
              child: _errorText(),
            )
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                  productName: products[index]["text"],
                  productCost: products[index]["cost"],
                  imageRoute: products[index]["imageRoute"],
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(
                        productName: products[index]["text"],
                        imageRoute: products[index]["imageRoute"],
                        productCost: products[index]["cost"],
                        description: products[index]["description"],
                        sizes: products[index]["sizes"],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }

  Widget _errorText() {
    return Text(
      emptyText,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.BLACK,
        fontSize: emptyFontSize,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
