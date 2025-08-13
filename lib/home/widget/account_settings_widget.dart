import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';

class AccountSettingsWidget extends StatelessWidget {
  final String text, name;
  final VoidCallback onTap;
  final Widget? icon;

  const AccountSettingsWidget({
    super.key,
    required this.text,
    required this.name,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyleTheme.textStyle14Bold.copyWith(
            color: AppColor.darkGrey,
          ),
        ),
        Text(name, style: TextStyleTheme.textStyle14Regular),
        GestureDetector(
          onTap: onTap,
          child: icon,
        ),
      ],
    );
  }
}
