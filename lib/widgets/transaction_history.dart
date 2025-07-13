import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
      isWithdrawal: true,
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
    ),
    TransactionModel(
      isWithdrawal: false,
      title: 'Landing Page project',
      date: '13 Apr, 2022 ',
      amount: r'$2,000',
    ),
    TransactionModel(
      isWithdrawal: true,
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 50),
        Column(
          children: items.map((item) => TransactionItem(model: item)).toList(),
        ),
      ],
    );
  }
}
