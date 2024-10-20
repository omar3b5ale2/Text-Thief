import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:textdetection/core/utils/Validation/validate_email_password.dart';import 'package:textdetection/features/auth/view_model/authentication/authentication_cubit.dart';import '../../../../../Config/Route/app_route.dart';import '../../../../../core/constant/app_constants.dart';import '../../../../../core/constant/string.dart';import '../../../../../core/constant/text_style.dart';import '../../../../../core/utils/Widget/build_default_button.dart';import '../../../../../core/utils/Widget/custom_messages.dart';import '../../../../../core/utils/Widget/password_text__form_field.dart';import '../../../model/log_in_model.dart';import '../build_otp_content.dart';import '../custom_text_form_field.dart';class FormLogin extends StatefulWidget {  const FormLogin({    super.key,  });  @override  State<FormLogin> createState() => _FormLoginState();}class _FormLoginState extends State<FormLogin> {  TextEditingController emailController = TextEditingController();  TextEditingController passwordController = TextEditingController();  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();  @override  void initState() {    emailController.clear();    passwordController.clear();    super.initState();  }  @override  Widget build(BuildContext context) {    return Form(      key: keyForm,      autovalidateMode: AutovalidateMode.onUserInteraction,      child: Padding(        padding: AppConstants.customFormPadding.copyWith(top: 50.r),        child: Column(          crossAxisAlignment: CrossAxisAlignment.start,          children: [            BuildContentHeader(              textHeader: AppString.loginHeader,            ),            CustomTextFormField(              hint: AppString.emailHint,              controller: emailController,              validator: (p0) => validateEmailOrPassword(input: p0),            ),            12.verticalSpace,            CustomPasswordTextFromField(              controller: passwordController,              fieldId: "passwordLogin",            ),            5.verticalSpace,            Align(              alignment: Alignment.centerRight,              child: GestureDetector(                onTap: () {                  Navigator.pushNamed(context, AppRoutes.forgotPassword);                },                child: Text(                  AppString.forgotPassword,                  style: AppTextStyles.style16xW700(),                ),              ),            ),            32.verticalSpace,            BuildCustomButton(              text: AppString.loginName,              onPressed: () {                final account = LogInModel(                  email: emailController.text,                  password: passwordController.text,                );                if (keyForm.currentState?.validate() == true) {                  Navigator.pushNamed(context, AppRoutes.mainScreen);                  context.read<AuthenticationCubit>().login(account);                  customMessages(                    context,                    massageState: MessageState.succeed,                    massage: AppString.succeedLogin,                  );                }              },            ),          ],        ),      ),    );  }}