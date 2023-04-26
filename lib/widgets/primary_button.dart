import 'package:flutter/material.dart';
import 'package:marketplace_flutter/foundations/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  late final String buttonText;
  final Function() onTap;

  PrimaryButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  final Color buttonFontColor = AppColors.WHITE;
  final Color buttonBackground = AppColors.SECONDARY_01.withOpacity(0.9);
  final double buttonFontSize = 15;
  final double buttonRadius = 10;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: buttonFontColor,
        backgroundColor: buttonBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonRadius),
          side: const BorderSide(
            width: 2.0,
            color: AppColors.WHITE,
          ),
        ),
        splashFactory: NoSplash.splashFactory,
      ),
      child: _buttonText(buttonText),
    );
  }

  Widget _buttonText(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: buttonFontColor,
        fontSize: buttonFontSize,
        fontWeight: FontWeight.w400,
        letterSpacing: 1,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
