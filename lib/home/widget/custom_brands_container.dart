import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/model/brands_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CustomBrandsContainer extends StatelessWidget {
  final BrandsModel model;
  const CustomBrandsContainer({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      height: 60.h,
      width: 127.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: AppColor.grey,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppImage(
            model.image,
          ),
          horizontalSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    model.text,
                    style: TextStyleTheme.textStyle14Bold,
                  ),
                  horizontalSpace(5),
                  Icon(Iconsax.verify5,color: AppColor.blue,size: 16,),
                ],
              ),
              Text(
                model.textProduct,
                overflow: TextOverflow.ellipsis,
                style: TextStyleTheme.textStyle10Bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
