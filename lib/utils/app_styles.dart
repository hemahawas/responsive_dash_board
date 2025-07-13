import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class AppStyles {
  AppStyles._();

  static TextStyle styleRegular16(context) => TextStyle(
    fontSize: getResponsiveSize(16, context),
    fontWeight: FontWeight.w400,
    color: Color(0xFF064061),
  );

  static TextStyle styleMeduim16(context) => TextStyle(
    fontSize: getResponsiveSize(16, context),
    fontWeight: FontWeight.w500,
    color: Color(0xFF064061),
  );

  static TextStyle styleSemiBold16(context) => TextStyle(
    fontSize: getResponsiveSize(16, context),
    fontWeight: FontWeight.w600,
    color: Color(0xFF064061),
  );

  static TextStyle styleSemiBold20(context) => TextStyle(
    fontSize: getResponsiveSize(20, context),
    fontWeight: FontWeight.w600,
    color: Color(0xFF064061),
  );

  static TextStyle styleSemiBold24(context) => TextStyle(
    fontSize: getResponsiveSize(24, context),
    fontWeight: FontWeight.w600,
    color: Color(0xFF4EB7F2),
  );

  static TextStyle styleRegular14(context) => TextStyle(
    fontSize: getResponsiveSize(14, context),
    fontWeight: FontWeight.w400,
    color: Color(0xFFAAAAAA),
  );
}

double getResponsiveSize(double size, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double scaleFactor = getScaleFactor(screenWidth);

  // Assuming you want to use the width of the screen for responsiveness
  return size * scaleFactor; // 375 is the base width for iPhone 11
}

double getScaleFactor(screenWidth) {
  if (screenWidth < SizeConfig.mobileBreakpoint) {
    return screenWidth / 500;
  } else if (screenWidth < SizeConfig.tabletBreakpoint) {
    return screenWidth / 1000;
  } else {
    return screenWidth / 1700;
  }
}
