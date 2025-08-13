import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShowBottomSheetAddress extends StatefulWidget {
  const CustomShowBottomSheetAddress({super.key});

  @override
  State<CustomShowBottomSheetAddress> createState() => _CustomShowBottomSheetAddressState();
}

class _CustomShowBottomSheetAddressState extends State<CustomShowBottomSheetAddress> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 50.h),
      height: 470.h,
      width: 390.w,
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Select Address",
            style: TextStyleTheme.textStyle20Bold.copyWith(
              color: AppColor.black,
            ),
          ),
          verticalSpace(36),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 16.h),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                  height: 94.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    color: selectedIndex == index ? AppColor.primary.withOpacity(0.50) : AppColor.white,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: selectedIndex == index ? AppColor.primary : AppColor.grey,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Omar Elgmmal", style: TextStyleTheme.textStyle16Bold),
                              Text(
                                "+201062156826",
                                style: TextStyleTheme.textStyle12Regular,
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 22.h,
                            width: 22.h,
                            decoration: BoxDecoration(
                              color: selectedIndex == index ? AppColor.primary : AppColor.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              padding: EdgeInsets.only(bottom: 0),
                              onPressed: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              icon: selectedIndex == index
                                  ? Icon(Icons.done, color: AppColor.white, size: 16)
                                  : SizedBox.shrink(),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        "House No.295, Hyderabad, Sindh, Pakistan",
                        style: TextStyleTheme.textStyle12Regular,
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: 2,
              separatorBuilder: (context, index) => verticalSpace(16),
            ),
          )
        ],
      ),
    );
  }
}
