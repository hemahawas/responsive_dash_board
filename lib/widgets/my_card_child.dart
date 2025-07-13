import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCardChild extends StatelessWidget {
  const MyCardChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          title: Text(
            'Name card',
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: Colors.white),
          ),
          subtitle: Text(
            'Syah Bandi',
            style: AppStyles.styleSemiBold20(
              context,
            ).copyWith(color: Colors.white),
          ),
          trailing: SvgPicture.asset(Assets.imagesGallery),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            '0918 8124 0042 8129',
            style: AppStyles.styleSemiBold24(
              context,
            ).copyWith(color: Colors.white),
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            '12/20 - 124',
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: Colors.white),
          ),
        ),
        Flexible(child: SizedBox(height: 27)),
      ],
    );
  }
}
