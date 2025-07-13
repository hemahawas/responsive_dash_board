import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.model});
  final TransactionModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      child: ListTile(
        title: Text(model.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(
          model.date,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          model.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color:
                model.isWithdrawal
                    ? const Color(0xffF3735E)
                    : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
