import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColorList extends StatefulWidget {
  const CustomColorList({super.key});

  @override
  State<CustomColorList> createState() => _CustomColorListState();
}

class _CustomColorListState extends State<CustomColorList> {

  int selectedIndexColor = 0;
  final List<Color> colorsList = [
    AppColor.primary,
    AppColor.red,
    AppColor.green,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22.h,
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          height: 22.h,
          width: 22.h,
          decoration: BoxDecoration(
            color: colorsList[index],
            border: Border.all(color: AppColor.black),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            padding: EdgeInsets.only(bottom: 0),
            onPressed: () {
              setState(() {
                selectedIndexColor = index;
              });
            },
            icon: selectedIndexColor == index
                ? Icon(Icons.done, color: AppColor.white, size: 16)
                : SizedBox.shrink(),
          ),
        ),
        separatorBuilder: (context, index) => horizontalSpace(10),
        itemCount: colorsList.length,
      ),
    );
  }
}
