import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';

class Shadows {
  static BoxShadow cardShadow = BoxShadow(
    color: AppColors.BLACK.withOpacity(0.1),
    blurRadius: 10.0,
    spreadRadius: 3.0,
  );

  static BoxShadow categoryShadow = BoxShadow(
    color: AppColors.BLACK.withOpacity(0.3),
    blurRadius: 10.0,
    spreadRadius: 1.0,
  );

  static BoxShadow cardTextShadow = BoxShadow(
    color: AppColors.BLACK.withOpacity(1),
    blurRadius: 15,
  );
}
