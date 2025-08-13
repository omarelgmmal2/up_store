import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomSectionHeading({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyleTheme.textStyle16Bold,
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "View all",
              style: TextStyleTheme.textStyle12Regular.copyWith(
                color: AppColor.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
