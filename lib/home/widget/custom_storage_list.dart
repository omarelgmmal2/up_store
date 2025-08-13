import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStorageList extends StatefulWidget {
  const CustomStorageList({super.key});

  @override
  State<CustomStorageList> createState() => _CustomStorageListState();
}

class _CustomStorageListState extends State<CustomStorageList> {

  int selectedIndexSize = 0;
  final List<String> size = [
    "XL",
    "L",
    "M",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndexSize = index;
              });
            },
            child: Container(
              alignment: AlignmentDirectional.center,
              height: 33.h,
              width: 65.w,
              decoration: BoxDecoration(
                color: selectedIndexSize == index
                    ? AppColor.primary
                    : AppColor.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: selectedIndexSize == index
                      ? AppColor.primary
                      : AppColor.black,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if(selectedIndexSize == index)
                  Icon(
                    Icons.done,
                    size: 16,
                    color: AppColor.white,
                  ),
                  horizontalSpace(5),
                  Text(
                    textAlign: TextAlign.center,
                    size[index],
                    style: TextStyleTheme.textStyle12Bold.copyWith(
                      color: selectedIndexSize == index ? AppColor.white : AppColor.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => horizontalSpace(16),
        itemCount: size.length,
      ),
    );
  }
}
