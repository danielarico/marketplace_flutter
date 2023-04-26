import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';
import 'package:marketplace_flutter/foundations/shadows.dart';
import 'package:marketplace_flutter/widgets/primary_button.dart';

class Subcategory extends StatelessWidget {
  final String text;
  final String imageRoute;
  final Function() onTap;

  Subcategory({
    super.key,
    required this.text,
    required this.imageRoute,
    required this.onTap,
  });

  final double cardHeight = 180;
  final double borderRadius = 5;
  final double cardFontSize = 20;

  final double buttonFontSize = 15;
  final double imageOpacity = 0.85;
  final Color containerColor = AppColors.WHITE;
  final Color highlightColor = Colors.black.withOpacity(0.2);
  final Color splashColor = Colors.black.withOpacity(0.3);

  final String buttonText = "Ver productos";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: cardHeight,
      padding: const EdgeInsets.all(6),
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
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: _cardText(text),
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

  Widget _cardText(String text) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
        shadows: [Shadows.textShadow],
        fontSize: cardFontSize,
        fontWeight: FontWeight.w700,
        letterSpacing: 2,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
