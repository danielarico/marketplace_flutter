import 'package:flutter/material.dart';

import '../foundations/app_colors.dart';
import '../widgets/primary_button.dart';

class ProductDetail extends StatelessWidget {
  final String productName;
  final String imageRoute;
  final String productCost;
  final String? description;
  final String? sizes;

  const ProductDetail({
    super.key,
    required this.productName,
    required this.imageRoute,
    required this.productCost,
    this.description,
    this.sizes,
  });

  final double imageOpacity = 1;
  final double cardHeight = 250;
  final double borderRadius = 5;
  final double pagePadding = 30;
  final double space = 30;

  final double titleFontSize = 22;
  final double textFontSize = 18;

  final double buttonPercentage = 0.5;

  final String pageTitle = "Product detail";
  final String buttonText = "Comprar";
  final String sizesText = "Tallas disponibles";

  final String defaultDescription = "No hay una descripción disponible.";
  final String defaultSizes = "No hay una descripción disponible.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pageTitle,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(pagePadding),
        child: ListView(
          children: [
            _mainText(productName),
            const SizedBox(height: 20),
            Container(
              height: cardHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                image: DecorationImage(
                  image: AssetImage(imageRoute),
                  fit: BoxFit.cover,
                  opacity: imageOpacity,
                ),
              ),
            ),
            SizedBox(height: space),
            _secondaryText(description ?? defaultDescription),
            SizedBox(height: space),
            _mainText(sizesText),
            SizedBox(height: space),
            _secondaryText(sizes ?? defaultSizes),
            SizedBox(height: space),
            SizedBox(height: space),
            _mainText(productCost),
            SizedBox(height: space),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * buttonPercentage,
                child: PrimaryButton(
                  buttonText: buttonText,
                  onTap: () => print("Comprando"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mainText(String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.PRIMARY_01,
        fontSize: titleFontSize,
        fontWeight: FontWeight.w900,
        letterSpacing: 1,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Widget _secondaryText(String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.PRIMARY_01,
        fontSize: textFontSize,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
    );
  }
}
