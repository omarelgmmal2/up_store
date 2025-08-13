import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/auth/forget_password/forget_password_screen.dart';
import 'package:e_commerce/auth/register/register_screen.dart';
import 'package:e_commerce/core/design/animated_wrapper.dart';
import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/app_input.dart';
import 'package:e_commerce/core/design/custom_divider.dart';
import 'package:e_commerce/core/design/custom_social.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/regex/app_regex.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:e_commerce/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          children: [
            verticalSpace(90),
            AnimatedWrapper(
              index: 1,
              child: Text(
                AppStrings.titleLogin,
                style: TextStyleTheme.textStyle24Bold,
              ),
            ),
            AnimatedWrapper(
              index: 2,
              child: Text(
                AppStrings.subTitleLogin,
                style: TextStyleTheme.textStyle14Regular.copyWith(
                  color: AppColor.darkGrey,
                ),
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  AnimatedWrapper(
                    index: 3,
                    child: AppInput(
                      hintText: AppStrings.email,
                      prefixIcon: AppImage(AppImages.email),
                      controller: emailController,
                      focusNode: emailFocusNode,
                      onFieldSubmitted: (p0) {
                        FocusScope.of(
                          context,
                        ).requestFocus(passwordFocusNode);
                      },
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isEmailValid(value)) {
                          return "ادخل بريدك الالكتروني";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      paddingTop: 24.h,
                    ),
                  ),
                  AnimatedWrapper(
                    index: 4,
                    child: AppInput(
                      hintText: AppStrings.password,
                      prefixIcon: AppImage(AppImages.password),
                      isPassword: true,
                      controller: passwordController,
                      focusNode: passwordFocusNode,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isPasswordValid(value)) {
                          return "ادخل كلمه المرور";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      paddingBottom: 20.h,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                ElasticIn(
                  duration: Duration(milliseconds: 400),
                  delay: Duration(milliseconds: 5 * 150),
                  child: Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                    activeColor: AppColor.primary,
                  ),
                ),
                ElasticIn(
                  duration: Duration(milliseconds: 400),
                  delay: Duration(milliseconds: 6 * 150),
                  child: Text(
                    AppStrings.rememberMe,
                    style: TextStyleTheme.textStyle12Regular,
                  ),
                ),
                Spacer(),
                ElasticIn(
                  duration: Duration(milliseconds: 400),
                  delay: Duration(milliseconds: 7 * 150),
                  child: TextButton(
                    onPressed: () {
                      navigateTo(toPage: ForgetPasswordScreen());
                    },
                    child: Text(
                      AppStrings.forgetPassword,
                      style: TextStyleTheme.textStyle10Regular,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(27),
            AnimatedWrapper(
              index: 8,
              child: AppButton(
                text: AppStrings.signIn,
                textStyle: TextStyleTheme.textStyle16Bold.copyWith(
                  color: AppColor.white,
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    navigateTo(toPage: HomeView());
                  }
                },
              ),
            ),
            verticalSpace(8),
            AnimatedWrapper(
              index: 9,
              child: AppButton(
                text: AppStrings.createAccount,
                textStyle: TextStyleTheme.textStyle16Bold,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10.r),
                    side: BorderSide(width: 1, color: AppColor.black),
                  ),
                ),
                onPressed: () {
                  navigateTo(toPage: RegisterScreen());
                },
              ),
            ),
            verticalSpace(24),
            AnimatedWrapper(
              index: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomDivider(margin: EdgeInsets.only(right: 8.w)),
                  Text(
                    AppStrings.orSignInWith,
                    style: TextStyleTheme.textStyle12Regular.copyWith(
                      color: AppColor.grey,
                    ),
                  ),
                  CustomDivider(margin: EdgeInsets.only(left: 8.w)),
                ],
              ),
            ),
            verticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElasticIn(
                  duration: Duration(milliseconds: 400),
                  delay: Duration(milliseconds: 11 * 150),
                  child: CustomSocial(image: AppImages.google),
                ),
                ElasticIn(
                  duration: Duration(milliseconds: 400),
                  delay: Duration(milliseconds: 12 * 150),
                  child: CustomSocial(image: AppImages.facebook),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
