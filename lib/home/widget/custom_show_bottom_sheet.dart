import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/model/payment_method_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShowBottomSheet extends StatefulWidget {
  const CustomShowBottomSheet({super.key});

  @override
  State<CustomShowBottomSheet> createState() => _CustomShowBottomSheetState();
}

class _CustomShowBottomSheetState extends State<CustomShowBottomSheet> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 50.h),
      height: 470.h,
      width: 390.w,
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          )
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Payment Method",
            style: TextStyleTheme.textStyle20Bold.copyWith(
              color: AppColor.black,
            ),
          ),
          verticalSpace(36),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedIndex == index ? AppColor.primary : AppColor.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    children: [
                      AppImage(paymentMethodList[index].image),
                      horizontalSpace(16),
                      Text(
                        paymentMethodList[index].text,
                        style: TextStyleTheme.textStyle14Bold,
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => verticalSpace(24),
              itemCount: paymentMethodList.length,
            ),
          ),
        ],
      ),
    );
  }
}
