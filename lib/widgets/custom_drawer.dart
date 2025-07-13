import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesUserAvatar,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          DrawerItemsListView(),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  model: DrawerItemModel(
                    title: 'Settings',
                    image: Assets.imagesSetting,
                  ),
                ),
                InActiveDrawerItem(
                  model: DrawerItemModel(
                    title: 'Logout',
                    image: Assets.imagesLogout,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
