import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPromoCode extends StatelessWidget {
  const CustomPromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      height: 46.h,
      width: 318.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: AppColor.grey,
        ),
      ),
      child: Row(
        children: [
          Text(
            "Promo code",
            style: TextStyleTheme.textStyle14Bold,
          ),
          Spacer(),
          Container(
            alignment: AlignmentDirectional.center,
            height: 32.h,
            width: 56.w,
            decoration: BoxDecoration(
              color: Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              "Apply",
              style: TextStyleTheme.textStyle12Bold.copyWith(
                color: AppColor.darkGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
