import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:flutter_svg/svg.dart';import '../../../../core/constant/colors.dart';import '../../../../core/constant/string.dart';import '../../../../core/constant/text_style.dart';import '../../../../generated/assets.dart';class HeaderHome extends StatelessWidget {  const HeaderHome({    super.key,  });  @override  Widget build(BuildContext context) {    return SliverToBoxAdapter(      child: Column(        children: [          Row(            mainAxisAlignment: MainAxisAlignment.spaceEvenly,            children: [              SizedBox(                width: 100.w,                height: 100.h,                child: SvgPicture.asset(Assets.svgAscan),              ),              Text(                AppString.headerTaskScreen,                style: AppTextStyles.style30(),              ),            ],          ),          Padding(            padding: EdgeInsets.symmetric(horizontal: 71.w),            child: const Divider(              color: AppColors.white,            ),          ),        ],      ),    );  }}