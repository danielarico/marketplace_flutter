import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';
import 'package:marketplace_flutter/foundations/shadows.dart';

import 'card_text.dart';

class Category extends StatelessWidget {
  final String text;
  final String imageRoute;
  final Function() onTap;

  Category({
    super.key,
    required this.text,
    required this.imageRoute,
    required this.onTap,
  });

  final double cardHeight = 250;
  final double borderRadius = 10;
  final Color containerColor = AppColors.WHITE;
  final double cardPadding = 4;

  final double imageOpacity = 0.75;

  final Color highlightColor = Colors.black.withOpacity(0.2);
  final Color splashColor = Colors.black.withOpacity(0.3);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth = screenWidth * 0.35;

    return Container(
      width: cardWidth,
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
          child: InkWell(
            splashColor: splashColor,
            highlightColor: highlightColor,
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: CardText(text: text),
            ),
          ),
        ),
      ),
    );
  }
}
