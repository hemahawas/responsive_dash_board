import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeDetailsModel> items = [
    IncomeDetailsModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      percentage: '40%',
    ),
    IncomeDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      percentage: '25%',
    ),
    IncomeDetailsModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      percentage: '20%',
    ),
    IncomeDetailsModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      percentage: '20%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) => ListTile(
          minVerticalPadding: 0,
          leading: CircleAvatar(
            backgroundColor: items[index].color,
            radius: 10,
          ),
          title: Text(
            items[index].title,
            style: AppStyles.styleRegular16(context),
          ),
          trailing: Text(
            items[index].percentage,
            style: AppStyles.styleMeduim16(
              context,
            ).copyWith(color: const Color(0xff208CC8)),
          ),
        ),
      ),
    );
  }
}
