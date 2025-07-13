import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/all_expenses_content.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_content.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history.dart';
import 'package:responsive_dash_board/widgets/my_card_transaction_and_income.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_content.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: AllExpensesAndQuickInvoice()),
                    Expanded(child: MyCardTransactionAndIncome()),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 19.0),
      ],
    );
  }
}
