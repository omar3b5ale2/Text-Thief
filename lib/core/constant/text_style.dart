import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:google_fonts/google_fonts.dart';import 'colors.dart';class AppTextStyles {  static style30() => _interTextStyle(30.sp, FontWeight.w700,      AppColors.deepGray, 0.0); // like any screen header.  static style16xW700() =>      _interTextStyle(16.sp, FontWeight.w700, AppColors.darkGray, 0.0);  static style16xW700cornFlowerPrimary() => _interTextStyle(      16.sp,      FontWeight.w700,      AppColors.cornFlowerPrimary,      0.0); //like: forget password.  static style16xW500() => _interTextStyle(16.sp, FontWeight.w500,      AppColors.darkBlueGray, 0.09); //like:'Don’t have an account? ',.  static style16x2() => _interTextStyle(16.sp, FontWeight.w700, AppColors.white,      0.0); //like: Register text button.  static style14() => _interTextStyle(      14.sp,      FontWeight.w500,      AppColors.charcoalGray,      0); // like: Don't worry! It occurs. Please enter the email address linked with your account.  static style20() => _interTextStyle(      20.sp,      FontWeight.w500,      AppColors.charcoalGray,      0); // like: Don't worry! It occurs. Please enter the email address linked with your account.  static TextStyle _interTextStyle(      double fontSize, FontWeight fontWeight, Color color, double height) {    return GoogleFonts.inter(      height: height,      fontSize: fontSize,      fontWeight: fontWeight,      color: color,    ).copyWith(overflow: TextOverflow.ellipsis);  }  static style16x2W400() => _interTextStyle(      16.sp, FontWeight.w400, AppColors.darkGray, 0.0); // onBoarding subTitle.  static style24W700() => _interTextStyle(      24.sp, FontWeight.w700, AppColors.nearBlack, 0.0); // onBoarding Title.  static style22urbanist() => _urbanist(22.sp, FontWeight.w700,      AppColors.deepGray, 0.0); // like any screen header.  static TextStyle _urbanist(      double fontSize, FontWeight fontWeight, Color color, double height) {    return GoogleFonts.urbanist(      height: height,      fontSize: fontSize,      fontWeight: fontWeight,      color: color,    ).copyWith(overflow: TextOverflow.ellipsis);  }}