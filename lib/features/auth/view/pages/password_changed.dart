import 'package:flutter/material.dart';
import 'package:textdetection/Config/Route/app_route.dart';
import 'package:textdetection/core/constant/app_constants.dart';
import 'package:textdetection/core/utils/Widget/build_default_button.dart';

import '../../../../core/constant/string.dart';
import '../../../../core/constant/text_style.dart';
import '../../../../generated/assets.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: AppConstants.customFormPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  Assets.pngSuccess,
                  width: MediaQuery.sizeOf(context).width * .2,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                AppString.changedPasswordHeader,
                maxLines: AppString.changedPasswordHeader.length,
                style: AppTextStyles.style30(),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                AppString.changedPasswordHint,
                style: AppTextStyles.style14(),
                maxLines: AppString.changedPasswordHint.length,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: BuildCustomButton(
                    text: AppString.backToLogIN,
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.loginScreen,
                        (route) => false,
                      );
                    }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
