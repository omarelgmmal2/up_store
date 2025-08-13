import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ItemOrderReview extends StatelessWidget {
  const ItemOrderReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: 167.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.grey,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                height: 43.h,
                width: 43.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xffBEBEBE).withOpacity(0.20),
                ),
                child: AppImage(
                  AppImages.shoes,
                  height: 23.h,
                  width: 23.h,
                  fit: BoxFit.scaleDown,
                ),
              ),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Nike",
                        style: TextStyleTheme.textStyle10Regular.copyWith(
                          color: AppColor.darkGrey,
                        ),
                      ),
                      horizontalSpace(5),
                      Icon(Iconsax.verify5,size: 10,color: AppColor.blue,),
                    ],
                  ),
                  Text(
                    "Blue Shoes of Nike",
                    style: TextStyleTheme.textStyle12Regular,
                  ),
                  Text(
                    "Color Green Size 32",
                    style: TextStyleTheme.textStyle12Bold,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
