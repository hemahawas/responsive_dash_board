import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_list_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListview extends StatelessWidget {
  const LatestTransactionListview({super.key});

  static const List<UserInfoListModel> items = [
    UserInfoListModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madranianiadi20adi20@gmail',
    ),
    UserInfoListModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoListModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoListModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoListModel(
      image: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              image: items[index].image,
              title: items[index].title,
              subtitle: items[index].subtitle,
            ),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
