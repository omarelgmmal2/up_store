import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBottomNavBar extends StatefulWidget {
  const DetailsBottomNavBar({super.key});

  @override
  State<DetailsBottomNavBar> createState() => _DetailsBottomNavBarState();
}

class _DetailsBottomNavBarState extends State<DetailsBottomNavBar> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      height: 80.h,
      decoration: BoxDecoration(
        color: Color(0xffD9D9D9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(11.r),
          topRight: Radius.circular(11.r),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10.w),
            height: 42.h,
            width: 42.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff20272C).withOpacity(0.50),
            ),
            child: IconButton(
              padding: EdgeInsets.only(bottom: 12.h),
              onPressed: () {
                if (count > 1) {
                  setState(() {
                    count--;
                  });
                }
              },
              icon: Icon(Icons.minimize, color: AppColor.white),
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
            height: 42.h,
            width: 42.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff20272C),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              icon: Icon(Icons.add, color: AppColor.white),
            ),
          ),
          Spacer(),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(138.w, 49.h),
              backgroundColor: Color(0xff20272C),
            ),
            onPressed: () {},
            icon: AppImage(AppImages.cart),
            label: Text(
              "Add To Cart",
              style: TextStyleTheme.textStyle12Bold.copyWith(
                color: AppColor.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
