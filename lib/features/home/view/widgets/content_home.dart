import 'package:flutter/material.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import '../../../../core/Config/Route/app_route.dart';import '../../../../core/constant/string.dart';import '../../../../generated/assets.dart';import 'custom_text_source.dart';class ContentHome extends StatelessWidget {  const ContentHome({    super.key,  });  @override  Widget build(BuildContext context) {    return SliverToBoxAdapter(      child: Padding(        padding: EdgeInsets.all(20.w),        child: GridView.count(          shrinkWrap: true,          physics: NeverScrollableScrollPhysics(),          crossAxisCount: 2,          crossAxisSpacing: 20.w,          mainAxisSpacing: 20.h,          childAspectRatio: 1.6,          children: [            CustomTextSource(              assetPath: Assets.svgImgtotext,              taskTitle: AppString.imageTaskTile,              onTap: () {                Navigator.pushNamed(context, AppRoutes.imagePickerScreen);              },            ),            CustomTextSource(              assetPath: Assets.svgQRCode,              taskTitle: AppString.qrCodeTaskTile,              onTap: () {                Navigator.pushNamed(context, AppRoutes.imagePickerScreen);              },            ),            CustomTextSource(              assetPath: Assets.svgPdftoext,              taskTitle: AppString.pdfTaskTile,              onTap: () {                Navigator.pushNamed(context, AppRoutes.textDetectScreen);              },            ),            CustomTextSource(              assetPath: Assets.svgVideocamera,              taskTitle: AppString.videoTile,              onTap: () {                Navigator.pushNamed(context, AppRoutes.textDetectScreen);              },            ),          ],        ),      ),    );  }}