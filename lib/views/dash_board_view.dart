import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_dash_board_layout.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      appBar:
          width < SizeConfig.mobileBreakpoint
              ? AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                ),
                title: const Text('DashBoard'),
              )
              : null,
      drawer: width < SizeConfig.mobileBreakpoint ? CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveDashBoardLayout(
        mobileLayout: (context) => DashBoardMobileLayout(),
        tabletLayout: (context) => DashBoardTabletLayout(),
        desktopLayout: (context) => DashBoardDesktopLayout(),
      ),
    );
  }
}
