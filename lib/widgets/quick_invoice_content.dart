import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/buttons_body.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/input_field_body.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoiceContent extends StatelessWidget {
  const QuickInvoiceContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.only(right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48, color: Colors.grey.shade300, thickness: 1),
          InputFieldBody(),
          SizedBox(height: 24),
          ButtonsBody(),
        ],
      ),
    );
  }
}
