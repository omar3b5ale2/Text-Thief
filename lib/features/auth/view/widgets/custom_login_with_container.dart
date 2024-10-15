import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constant/app_constants.dart';
import '../../../../core/constant/colors.dart';

class CustomLoginWith extends StatelessWidget {
final String svgPicture;
final VoidCallback onPressed;
const CustomLoginWith({super.key, required this.svgPicture, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: AppColors.lightGray),
          borderRadius:
          AppConstants.defaultCircularBorder,
        ),
      ),
      child: GestureDetector(
          onTap:onPressed,
          child:  SvgPicture.asset(
            svgPicture,
            width: 26.0.w,
            height: 26.0.h,
          ),
          ),
      );
  }
}
