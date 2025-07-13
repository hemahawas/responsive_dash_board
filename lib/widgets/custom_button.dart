import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.backGroundColor,
    required this.textColor,
  });
  final VoidCallback onPressed;
  final String label;
  final Color backGroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: onPressed,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            label,
            style: AppStyles.styleSemiBold20(
              context,
            ).copyWith(color: textColor, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
