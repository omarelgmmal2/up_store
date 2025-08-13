import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/model/banner_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBanner extends StatefulWidget {
  const CustomBanner({super.key});

  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: List.generate(
            bannerList.length,
            (index) => ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12.r),
              child: AppImage(
                bannerList[index].image,
                fit: BoxFit.cover,
                height: 161.h,
                width: 342.w,
              ),
            ),
          ),
          options: CarouselOptions(
            height: 161.h,
            autoPlay: true,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              currentIndex = index;
              setState(() {});
            },
          ),
        ),
        verticalSpace(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            bannerList.length,
            (index) => Container(
              margin: EdgeInsetsDirectional.only(end: 3.w),
              height: 6.h,
              width: index == currentIndex ? 48.r : 20.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(
                  index == currentIndex ? 6.r : 4.r,
                ),
                color: index == currentIndex
                    ? AppColor.primary
                    : const Color(0xffD9D9D9),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
