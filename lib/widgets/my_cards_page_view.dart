import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardsPageView extends StatefulWidget {
  const MyCardsPageView({super.key});

  @override
  State<MyCardsPageView> createState() => _MyCardsPageViewState();
}

class _MyCardsPageViewState extends State<MyCardsPageView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView.builder(
          scrollDirection: Axis.horizontal,
          onPageChanged: (index) {
            currentIndex = index;
            setState(() {});
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return const MyCard();
          },
        ),
        SizedBox(height: 20),
        DotsIndicator(currentIndex: currentIndex),
      ],
    );
  }
}
