import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';

class AllExpensesItemHeading extends StatelessWidget {
  const AllExpensesItemHeading({
    super.key,
    required this.model,
    required this.isSelected,
  });

  final AllExpensesModel model;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 7,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60, minWidth: 25),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color:
                      isSelected
                          ? Colors.black.withAlpha(10)
                          : Color(0xFFFAFAFA),
                ),
                child: SvgPicture.asset(
                  model.image,
                  colorFilter: ColorFilter.mode(
                    isSelected ? Color(0xFFFAFAFA) : Color(0xff4EB7F2),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),

        Flexible(
          flex: 1,
          child: Icon(Icons.arrow_forward_ios_rounded, size: 24),
        ),
      ],
    );
  }
}
