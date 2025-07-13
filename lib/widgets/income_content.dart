import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/income_header.dart';

class IncomeContent extends StatelessWidget {
  const IncomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          IncomeHeader(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Expanded(child: IncomeChart()), IncomeDetails()],
            ),
          ),
        ],
      ),
    );
  }
}
