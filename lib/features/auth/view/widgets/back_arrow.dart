import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:flutter_svg/svg.dart';import '../../../../core/constant/app_constants.dart';import '../../../../generated/assets.dart';import '../../../../core/constant/colors.dart';AppBar backArrow(BuildContext context) {  return AppBar(    leadingWidth: 72.0.w,    leading: InkWell(      onTap: () {        Navigator.of(context).pop();      },      child: Container(        width: 19.w,        height: 19.h,        padding: EdgeInsets.all(7),        margin: EdgeInsets.only(left: 32.0, top: 7.0, bottom: 8.0).r,        clipBehavior: Clip.antiAlias,        decoration: BoxDecoration(          boxShadow: [            BoxShadow(              color: AppColors.blueLight,              blurRadius: .5,              blurStyle: BlurStyle.outer,            )          ],          color: Colors.white,          borderRadius:          AppConstants.defaultCircularBorder,        ),        child: SvgPicture.asset(          Assets.arrow,          fit: BoxFit.contain,        ),      ),    ),  );}