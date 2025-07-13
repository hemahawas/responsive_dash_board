import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/my_card_transaction_and_income.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AllExpensesAndQuickInvoice()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const SizedBox(height: 24),
              Expanded(child: MyCardTransactionAndIncome()),
            ],
          ),
        ),
      ],
    );
  }
}
