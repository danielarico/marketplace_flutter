import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String productName;
  final String imageRoute;
  final String productCost;

  const ProductDetail({
    super.key,
    required this.productName,
    required this.imageRoute,
    required this.productCost,
  });

  final double imageOpacity = 0.85;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productName,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 180,
            child: Material(
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                    image: AssetImage(imageRoute),
                    fit: BoxFit.cover,
                    opacity: imageOpacity,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
