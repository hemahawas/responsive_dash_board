import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';
import 'package:responsive_dash_board/widgets/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          MyCardsPageView(),
          Divider(height: 40, color: Colors.grey.shade300, thickness: 1),
          TransactionHistory(),
        ],
      ),
    );
  }
}
