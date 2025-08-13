import 'package:e_commerce/auth/login/login_screen.dart';
import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(automaticallyImplyLeading: false),
      body: Column(
        children: [
          AppImage(
            AppImages.accountCreated,
          ),
          Text(
            textAlign: TextAlign.center,
            AppStrings.successTitle,
            style: TextStyleTheme.textStyle24Bold,
          ),
          verticalSpace(8),
          Text(
            textAlign: TextAlign.center,
            AppStrings.successSubTitle,
            style: TextStyleTheme.textStyle14Regular.copyWith(
              color: AppColor.grey,
            ),
          ),
          verticalSpace(50),
          AppButton(
            text: AppStrings.Continue,
            textStyle: TextStyleTheme.textStyle16Bold.copyWith(
              color: AppColor.white,
            ),
            onPressed: () {
              navigateTo(toPage: LoginScreen());
            },
          ),
        ],
      ),
    );
  }
}
