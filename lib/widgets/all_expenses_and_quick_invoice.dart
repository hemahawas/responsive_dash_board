import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_content.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_content.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpensesContent(),
        SizedBox(height: 24),
        QuickInvoiceContent(),
      ],
    );
  }
}
