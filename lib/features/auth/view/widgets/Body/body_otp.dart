import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import '../../../../../Config/Route/app_route.dart';import '../../../../../core/constant/app_constants.dart';import '../../../../../core/constant/string.dart';import '../../../../../core/utils/Widget/build_default_button.dart';import '../../../../../core/utils/Widget/build_otp_container_unit.dart';import '../../../../../core/utils/Widget/build_text_button.dart';import '../../../view_model/authentication/authentication_cubit.dart';import '../build_otp_content.dart';class BodyOtp extends StatelessWidget {  final String phone;  const BodyOtp(this.phone, {super.key});  @override  Widget build(BuildContext context) {    return Padding(      padding: AppConstants.customFormPadding,      child: CustomScrollView(        physics: const RangeMaintainingScrollPhysics(),        slivers: [          SliverToBoxAdapter(            child: Column(              children: [                BuildContentHeader(                  textHeader: AppString.otpMessage,                  textDescription: AppString.enterYourOTP,                ),                BuildOtpContainerUnit(),                Padding(                  padding: const EdgeInsets.only(top: 32),                  child: BuildCustomButton(                    onPressed: () {                      Navigator.pushNamed(context, AppRoutes.createNewPassword);                    },                    text: AppString.verifyOtpCode,                  ),                ),              ],            ),          ),          SliverFillRemaining(            hasScrollBody: false,            child: BuildTextButton(              text1: AppString.didntReceivedAnyOtpCode,              text2: AppString.resendOtpCode,              onPressedText2: () {                context.read<AuthenticationCubit>().resendCodeTo(phone);                // resend code              },            ),          )        ],      ),    );  }}