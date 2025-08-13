import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  const CustomDivider({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: 84.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffD9D9D9),
        ),
      ),
    );
  }
}
