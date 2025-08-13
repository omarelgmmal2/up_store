import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/model/item_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ContainerBrandStore extends StatelessWidget {
  const ContainerBrandStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      padding: EdgeInsets.only(
        top: 24.h,
        right: 16.w,
        left: 16.w,
        bottom: 16.h,
      ),
      height: 180.h,
      width: 342.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColor.grey),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppImage(AppImages.bata),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Bata", style: TextStyleTheme.textStyle14Bold),
                      horizontalSpace(5),
                      Icon(Iconsax.verify5, color: AppColor.blue, size: 16),
                    ],
                  ),
                  Text(
                    "172 products",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyleTheme.textStyle10Bold,
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(20),
          SizedBox(
            height: 80.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                height: 80.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xffF3F3F3),
                ),
                child: AppImage(
                  itemCategoryList[index].image,
                  height: 60.h,
                  width: 54.w,
                  fit: BoxFit.scaleDown,
                ),
              ),
              separatorBuilder: (context, index) => horizontalSpace(5),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
