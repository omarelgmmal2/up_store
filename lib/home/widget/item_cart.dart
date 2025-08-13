import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ItemCart extends StatefulWidget {
  const ItemCart({super.key});

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96.h,
      width: 310.w,
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
          verticalSpace(12),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.w,left: 50.w),
                height: 30.h,
                width: 30.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff20272C).withOpacity(0.50),
                ),
                child: IconButton(
                  padding: EdgeInsets.only(bottom: 10.h),
                  onPressed: () {
                    if (count > 1) {
                      setState(() {
                        count--;
                      });
                    }
                  },
                  icon: Icon(Icons.minimize, color: AppColor.white,size: 18),
                ),
              ),
              Text(
                count.toString(),
                style: TextStyleTheme.textStyle16Regular.copyWith(
                  color: AppColor.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w),
                height: 30.h,
                width: 30.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.primary,
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  icon: Icon(Icons.add, color: AppColor.white,size: 16,),
                ),
              ),
              Spacer(),
              Text(
                "\$399",
                style: TextStyleTheme.textStyle12Bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
