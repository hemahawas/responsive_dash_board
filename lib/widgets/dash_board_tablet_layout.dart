import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card_transaction_and_income.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: AllExpensesAndQuickInvoice()),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    SizedBox(height: 24),
                    Expanded(child: MyCardTransactionAndIncome()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
