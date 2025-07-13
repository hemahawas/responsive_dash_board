import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hint});
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffFAFAFA),
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(
          context,
        ).copyWith(color: Color(0xffB7B7B7)),
        border: _buildBorder(),
        focusedBorder: _buildBorder(),
        enabledBorder: _buildBorder(),
      ),
    );
  }

  _buildBorder() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide.none,
  );
}
