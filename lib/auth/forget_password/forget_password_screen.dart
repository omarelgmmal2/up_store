import 'package:e_commerce/auth/reset_password/reset_password_screen.dart';
import 'package:e_commerce/core/design/animated_wrapper.dart';
import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/app_input.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/regex/app_regex.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          children: [
            verticalSpace(90),
            AnimatedWrapper(
              index: 1,
              child: Text(
                AppStrings.forgetPassword,
                style: TextStyleTheme.textStyle24Bold,
              ),
            ),
            AnimatedWrapper(
              index: 2,
              child: Text(
                AppStrings.forgetPasswordSubTitle,
                style: TextStyleTheme.textStyle14Regular.copyWith(
                  color: AppColor.darkGrey,
                ),
              ),
            ),
            Form(
              key: formKey,
              child: AnimatedWrapper(
                index: 3,
                child: AppInput(
                  hintText: AppStrings.email,
                  prefixIcon: AppImage(AppImages.email),
                  controller: emailController,
                  focusNode: emailFocusNode,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !AppRegex.isEmailValid(value)) {
                      return "ادخل بريدك الالكتروني";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  paddingTop: 48.h,
                  paddingBottom: 24.h,
                ),
              ),
            ),
            AnimatedWrapper(
              index: 4,
              child: AppButton(
                text: AppStrings.submit,
                textStyle: TextStyleTheme.textStyle16Bold.copyWith(
                  color: AppColor.white,
                ),
                onPressed: () async{
                  if (formKey.currentState!.validate()) {
                    await Fluttertoast.showToast(
                      msg: "Sent successfully",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.SNACKBAR,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.green,
                      textColor: AppColor.white,
                      fontSize: 16.sp,
                    );
                    navigateTo(toPage: ResetPasswordScreen(email: emailController.text,));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}