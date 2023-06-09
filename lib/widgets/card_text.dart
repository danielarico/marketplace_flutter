import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';

import '../foundations/shadows.dart';

class CardText extends StatelessWidget {
  final String text;
  final TextAlign align;

  const CardText({
    Key? key,
    required this.text,
    this.align = TextAlign.center,
  }) : super(key: key);

  final double fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        color: AppColors.WHITE,
        shadows: [Shadows.cardTextShadow],
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        letterSpacing: 2,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
