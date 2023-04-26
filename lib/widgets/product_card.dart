import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';
import 'package:marketplace_flutter/foundations/shadows.dart';
import 'package:marketplace_flutter/widgets/primary_button.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productCost;
  final String imageRoute;
  final Function() onTap;

  ProductCard({
    super.key,
    required this.productName,
    required this.productCost,
    required this.imageRoute,
    required this.onTap,
  });

  final double cardHeight = 180;
  final double cardFontSize = 18;
  final Color cardFontColor = AppColors.PRIMARY_01;
  final Color cardBackgroundColor = AppColors.WHITE;
  final double cardMargin = 15;
  final double cardPadding = 6;

  final String buttonText = "Ver detalles";

  final double borderRadius = 5;
  final double imageOpacity = 1;

  final Color highlightColor = Colors.black.withOpacity(0.2);
  final Color splashColor = Colors.black.withOpacity(0.3);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(cardMargin),
      height: cardHeight,
      padding: EdgeInsets.all(cardPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: cardBackgroundColor,
        boxShadow: [Shadows.categoryShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(cardPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _cardText(productName),
                  _cardText(productCost),
                  PrimaryButton(
                    buttonText: buttonText,
                    onTap: onTap,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                image: DecorationImage(
                  image: AssetImage(imageRoute),
                  fit: BoxFit.cover,
                  opacity: imageOpacity,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardText(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: cardFontColor,
        fontSize: cardFontSize,
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
