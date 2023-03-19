import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';
import 'package:marketplace_flutter/foundations/shadows.dart';

class Category extends StatelessWidget {
  final String text;
  final AssetImage image;
  final Function() onTap;

  Category({
    required this.text,
    required this.image,
    required this.onTap,
  });

  final double cardHeight = 250;
  final double borderRadius = 15;
  final double fontSize = 25;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth = screenWidth * 0.35;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: cardWidth,
        height: cardHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: AppColors.WHITE,
          boxShadow: [Shadows.categoryShadow],
        ),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Positioned(
              top: 0,
              child: Container(
                // alignment: Alignment.center,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: image,
                //     fit: BoxFit.cover,
                //     opacity: 0.7,
                //   ),
                // ),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text(
                  text,
                  style: TextStyle(
                    color: AppColors.WHITE,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                    shadows: [Shadows.textShadow],
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
            Positioned(
              top: 10,
              child: InkWell(
                splashColor: Colors.green,
                child: Ink(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
