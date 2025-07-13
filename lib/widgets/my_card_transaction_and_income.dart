import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_content.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history.dart';

class MyCardTransactionAndIncome extends StatelessWidget {
  const MyCardTransactionAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCardAndTransactionHistory(),
        SizedBox(height: 12),
        Expanded(child: IncomeContent()),
      ],
    );
  }
}
