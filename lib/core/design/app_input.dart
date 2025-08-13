import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInput extends StatefulWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final void Function(String)? onFieldSubmitted;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final bool isPassword;
  final Widget? suffixIcon,prefixIcon;
  final double paddingBottom, paddingTop;
  final Color? fillColor;
  final bool? isFilled;
  const AppInput({
    super.key,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.onFieldSubmitted,
    required this.hintText,
    this.validator,
    this.textInputAction,
    this.isPassword = false,
    this.suffixIcon,
    this.prefixIcon,
    this.paddingBottom = 16,
    this.paddingTop = 0,
    this.fillColor,
    this.isFilled,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {

  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.only(bottom: widget.paddingBottom.h, top: widget.paddingTop.h),
      child: TextFormField(
        style: TextStyleTheme.textStyle14Medium,
        controller: widget.controller,
        cursorColor: AppColor.primary,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        decoration: InputDecoration(
          fillColor: widget.fillColor,
          filled: widget.isFilled,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword ? IconButton(
            icon: Icon(
              isPasswordHidden ? Icons.visibility_off : Icons.visibility,
              color: AppColor.grey,
            ),
            onPressed: () {
              isPasswordHidden = !isPasswordHidden;
              setState(() {});
            },
          ) : widget.suffixIcon,
        ),
        focusNode: widget.focusNode,
        keyboardType: widget.keyboardType,
        obscureText: isPasswordHidden && widget.isPassword,
        onFieldSubmitted: widget.onFieldSubmitted,
        validator: widget.validator,
        textInputAction: widget.textInputAction,
      ),
    );
  }
}
