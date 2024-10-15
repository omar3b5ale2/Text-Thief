import 'package:flutter/material.dart';import '../../constant/app_constants.dart';import '../../constant/colors.dart';import '../../constant/text_style.dart';class BuildCustomButton extends StatelessWidget {  final String text;  final Color color;  final double height;  final double width;  final void Function()? onPressed;   const BuildCustomButton({    super.key,    required this.text,    this.onPressed,    this.color =AppColors.cornFlowerPrimary,    this.height = .125,    this.width = 1,  });  @override  Widget build(BuildContext context) {    return MaterialButton(      onPressed: onPressed,      color: color,      height: MediaQuery.sizeOf(context).width * height,      minWidth: MediaQuery.sizeOf(context).width* width,      shape: RoundedRectangleBorder(        borderRadius: BorderRadius.circular(AppConstants.defaultCircularBorder),      ),      child: Text(        text ,        style: AppTextStyles.style16x2(),      ),    );  }}