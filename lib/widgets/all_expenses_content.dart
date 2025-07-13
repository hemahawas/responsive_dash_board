import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_body.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';

class AllExpensesContent extends StatelessWidget {
  const AllExpensesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: const EdgeInsets.only(top: 40, right: 24),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesBody(),
        ],
      ),
    );
  }
}
