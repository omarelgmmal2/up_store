import 'package:e_commerce/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 264.h,
      width: 298.w,
      decoration: BoxDecoration(
        color: AppColor.white.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
    );
  }
}
