import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class AdaptiveDashBoardLayout extends StatelessWidget {
  const AdaptiveDashBoardLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.mobileBreakpoint) {
          log('maxwidth: ${constraints.maxWidth}');
          log('mediaquery: ${MediaQuery.sizeOf(context).width}');
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.tabletBreakpoint) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
