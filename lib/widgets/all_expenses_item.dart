import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/widgets/active_all_expenses_item.dart';
import 'package:responsive_dash_board/widgets/inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.model,

    required this.isSelected,
  });
  final AllExpensesModel model;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveAllExpensesItem(model: model),
      secondChild: InActiveAllExpensesItem(model: model),
      crossFadeState:
          isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Duration(milliseconds: 150),
    );
  }
}
