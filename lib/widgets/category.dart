import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';
import 'package:marketplace_flutter/foundations/shadows.dart';

class Category extends StatelessWidget {
  final String text;
  final String imageRoute;
  final Function() onTap;

  Category({
    required this.text,
    required this.imageRoute,
    required this.onTap,
  });

  final double cardHeight = 250;
  final double borderRadius = 10;
  final double fontSize = 23;
  final double imageOpacity = 0.85;
  final Color containerColor = AppColors.WHITE;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth = screenWidth * 0.35;

    return Container(
      width: cardWidth,
      height: cardHeight,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: containerColor,
        boxShadow: [
          Shadows.categoryShadow,
        ],
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
            splashColor: Colors.grey.withOpacity(0.1),
            highlightColor: Colors.grey.withOpacity(0.1),
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  shadows: [Shadows.textShadow],
                  fontSize: fontSize,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
