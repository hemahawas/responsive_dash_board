import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  final items = [
    const AllExpensesModel(
      image: Assets.imagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesModel(
      image: Assets.imagesCardReceive,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesModel(
      image: Assets.imagesCardSend,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children:
          items.asMap().entries.map((item) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  if (selectedIndex != item.key) {
                    setState(() {
                      selectedIndex = item.key;
                    });
                  }
                },
                child: AllExpensesItem(
                  model: item.value,
                  isSelected: selectedIndex == item.key,
                ),
              ),
            );
          }).toList(),
    );
  }
}
