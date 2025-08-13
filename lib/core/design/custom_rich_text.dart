import 'package:flutter/material.dart';
import '../utils/app_color.dart';
import '../utils/text_style_theme.dart';

class CustomRichText extends StatelessWidget {
  final String? text, subText,title,subTitle;

  const CustomRichText({
    super.key,
    required this.text,
    required this.subText,
    this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: text,
              style: TextStyleTheme.textStyle12Regular,
            ),
            TextSpan(
              text: subText,
              style: TextStyleTheme.textStyle12Regular.copyWith(
                color: AppColor.primary,
              ),
            ),
            TextSpan(
              text: title,
              style: TextStyleTheme.textStyle12Regular,
            ),
            TextSpan(
              text: subTitle,
              style: TextStyleTheme.textStyle12Regular.copyWith(
                color: AppColor.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
