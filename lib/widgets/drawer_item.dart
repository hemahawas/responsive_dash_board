import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model, required this.isActive});
  final DrawerItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Duration(milliseconds: 100),
      firstChild: ActiveDrawerItem(model: model),
      secondChild: InActiveDrawerItem(model: model),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.model});

  final DrawerItemModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(model.title, style: AppStyles.styleRegular16(context)),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.model});

  final DrawerItemModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(
        model.title,
        style: AppStyles.styleSemiBold16(
          context,
        ).copyWith(fontWeight: FontWeight.w700, color: Color(0xFF4EB7F2)),
      ),
      trailing: Container(width: 3.27, color: Color(0xFF4EB7F2)),
    );
  }
}
