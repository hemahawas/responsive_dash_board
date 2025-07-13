import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(image: Assets.imagesCategory, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesConvertCard, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesGraph, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWallet, title: 'Wallet Amount'),
    DrawerItemModel(image: Assets.imagesChart, title: 'My investments'),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder:
          (context, index) => GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(
                model: drawerItems[index],
                isActive: index == activeIndex,
              ),
            ),
          ),
    );
  }
}
