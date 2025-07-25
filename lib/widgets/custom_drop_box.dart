import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomDropBox extends StatelessWidget {
  const CustomDropBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Color(0xFFF1F1F1), width: 1),
        ),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyles.styleMeduim16(context)),
          const SizedBox(width: 18),
          Transform.rotate(
            angle: 1.57,
            child: const Icon(Icons.arrow_forward_ios_rounded, size: 24),
          ),
        ],
      ),
    );
  }
}
