import 'package:e_commerce/core/design/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSocial extends StatelessWidget {
  final String image;
  const CustomSocial({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12.w),
      height: 45.h,
      width: 45.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xffD9D9D9),
        ),
      ),
      child: AppImage(image),
    );
  }
}
