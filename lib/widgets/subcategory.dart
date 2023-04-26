import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';
import 'package:marketplace_flutter/foundations/shadows.dart';
import 'package:marketplace_flutter/widgets/primary_button.dart';

import 'card_text.dart';

class Subcategory extends StatelessWidget {
  final String text;
  final String imageRoute;
  final Function() onTap;

  const Subcategory({
    super.key,
    required this.text,
    required this.imageRoute,
    required this.onTap,
  });

  final double cardHeight = 180;
  final double borderRadius = 5;
  final double cardFontSize = 20;
  final double cardMargin = 15;
  final double cardPadding = 6;
  final double contentPadding = 25;

  final double imageOpacity = 0.75;
  final Color containerColor = AppColors.WHITE;

  final String buttonText = "Ver productos";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(cardMargin),
      height: cardHeight,
      padding: EdgeInsets.all(cardPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: containerColor,
        boxShadow: [Shadows.categoryShadow],
      ),
      child: Material(
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
              image: AssetImage(imageRoute),
              fit: BoxFit.cover,
              opacity: imageOpacity,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(contentPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CardText(text: text),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: PrimaryButton(
                    buttonText: buttonText,
                    onTap: onTap,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
