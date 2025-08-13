import 'package:e_commerce/auth/login/login_screen.dart';
import 'package:e_commerce/auth/success/success_screen.dart';
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
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyEmailAddressScreen extends StatelessWidget {
  final String email;
  const VerifyEmailAddressScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 35.w),
            onPressed: () {
              navigateTo(toPage: LoginScreen());
            },
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          AppImage(
            AppImages.mailIllustration,
          ),
          Text(
            AppStrings.verifyEmailTitle,
            style: TextStyleTheme.textStyle24Bold,
          ),
          verticalSpace(5),
          Text(
            email,
            style: TextStyleTheme.textStyle14Regular,
          ),
          verticalSpace(5),
          Text(
            textAlign: TextAlign.center,
            AppStrings.verifyEmailSubTitle,
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
              navigateTo(toPage: SuccessScreen());
            },
          ),
          verticalSpace(10),
          TextButton(
            onPressed: (){},
            child: Text(AppStrings.resendEmail),
          ),
        ],
      ),
    );
  }
}
