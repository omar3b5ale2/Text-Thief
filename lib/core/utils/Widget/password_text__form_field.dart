import 'package:flutter_bloc/flutter_bloc.dart';import '../../constant/string.dart';import '../../constant/icons.dart';import '../Validation/password_validate.dart';import '../../../features/auth/view_model/PasswordVisibility/password_visibility_cubit.dart';import '../../../features/auth/view/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class CustomPasswordTextFromField extends StatelessWidget {  final TextEditingController controller;  const CustomPasswordTextFromField({super.key, required this.controller});  @override  Widget build(BuildContext context) {    return BlocBuilder<PasswordVisibilityCubit, bool>(      builder: (context, state) {        return CustomTextFormField(          suffixIcon: IconButton(            icon: Icon(              state                  ? AppIcons.passwordVisibility                  : AppIcons.passwordVisibilityOff,            ),            onPressed: () {              context                  .read<PasswordVisibilityCubit>()                  .togglePasswordVisibility();            },          ),          controller: controller,          hint: AppString.passwordHint,          isPassword: !state,          validator: (p0) => validatePassword(false, password: p0),        );      },    );  }}