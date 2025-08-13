import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(
              AppImages.paymentStatus,
              height: 161.h,
              width: 203.w,
              fit: BoxFit.contain,
            ),
            verticalSpace(10),
            Text(
              "Payment Success!",
              style: TextStyleTheme.textStyle24Bold,
            ),
            verticalSpace(6),
            Text(
              "Your item will be shipped soon!",
              style: TextStyleTheme.textStyle12Regular,
            ),
            verticalSpace(24),
            AppButton(
              textStyle: TextStyleTheme.textStyle16Bold.copyWith(
                color: AppColor.white,
              ),
              text: "Continue Shopping",
              onPressed: () {
                  navigateTo(toPage: HomeView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
