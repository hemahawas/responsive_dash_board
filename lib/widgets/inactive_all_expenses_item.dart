import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_heading.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.model});

  final AllExpensesModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: const Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Color(0xFFF1F1F1), width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeading(model: model, isSelected: false),
          SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(model.title, style: AppStyles.styleSemiBold16(context)),
          ),
          SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(model.date, style: AppStyles.styleRegular14(context)),
          ),
          SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(model.price, style: AppStyles.styleSemiBold24(context)),
          ),
        ],
      ),
    );
  }
}
