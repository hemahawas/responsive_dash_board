import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';

class ButtonsBody extends StatelessWidget {
  const ButtonsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            label: 'Add more details',
            backGroundColor: Colors.white,
            textColor: Color(0xff4EB7F2),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: CustomButton(
            onPressed: () {},
            label: 'Send Money',
            backGroundColor: Color(0xff4EB7F2),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
