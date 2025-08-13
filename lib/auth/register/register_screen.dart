import 'package:animate_do/animate_do.dart';
import 'package:e_commerce/auth/login/login_screen.dart';
import 'package:e_commerce/core/design/animated_wrapper.dart';
import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/app_input.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/design/custom_divider.dart';
import 'package:e_commerce/core/design/custom_rich_text.dart';
import 'package:e_commerce/core/design/custom_social.dart';
import 'package:e_commerce/core/logic/helper_methods.dart';
import 'package:e_commerce/core/regex/app_regex.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_strings.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  final firstNameFocusNode = FocusNode();
  final lastNameFocusNode = FocusNode();
  bool rememberMe = false;

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
                AppStrings.titleRegister,
                style: TextStyleTheme.textStyle24Bold,
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: AnimatedWrapper(
                          index: 2,
                          child: AppInput(
                            hintText: AppStrings.firstName,
                            prefixIcon: AppImage(AppImages.user),
                            controller: firstNameController,
                            focusNode: firstNameFocusNode,
                            onFieldSubmitted: (p0) {
                              FocusScope.of(
                                context,
                              ).requestFocus(lastNameFocusNode);
                            },
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !AppRegex.isUserNameValid(value)) {
                                return "ادخل الاسم الاول";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            paddingTop: 24.h,
                          ),
                        ),
                      ),
                      horizontalSpace(12),
                      Expanded(
                        child: AnimatedWrapper(
                          index: 3,
                          child: AppInput(
                            hintText: AppStrings.lastName,
                            prefixIcon: AppImage(AppImages.user),
                            controller: lastNameController,
                            focusNode: lastNameFocusNode,
                            onFieldSubmitted: (p0) {
                              FocusScope.of(
                                context,
                              ).requestFocus(emailFocusNode);
                            },
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !AppRegex.isUserNameValid(value)) {
                                return "ادخل الاسم الاخير";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            paddingTop: 24.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                  AnimatedWrapper(
                    index: 4,
                    child: AppInput(
                      hintText: AppStrings.email,
                      prefixIcon: AppImage(AppImages.email),
                      controller: emailController,
                      focusNode: emailFocusNode,
                      onFieldSubmitted: (p0) {
                        FocusScope.of(context).requestFocus(phoneFocusNode);
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
                    ),
                  ),
                  AnimatedWrapper(
                    index: 5,
                    child: AppInput(
                      hintText: AppStrings.phoneNumber,
                      prefixIcon: AppImage(AppImages.phone),
                      controller: phoneController,
                      focusNode: phoneFocusNode,
                      onFieldSubmitted: (p0) {
                        FocusScope.of(
                          context,
                        ).requestFocus(passwordFocusNode);
                      },
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isPhoneNumberValid(value)) {
                          return "ادخل رقم هاتفك";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  AnimatedWrapper(
                    index: 6,
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
            ElasticIn(
              duration: Duration(milliseconds: 400),
              delay: Duration(milliseconds: 7 * 150),
              child: Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                    activeColor: AppColor.primary,
                  ),
                  CustomRichText(
                    text: AppStrings.iAgreeTo,
                    subText: AppStrings.privacyPolicy,
                    title: AppStrings.and,
                    subTitle: AppStrings.termsOfUse,
                  ),
                ],
              ),
            ),
            verticalSpace(28),
            AnimatedWrapper(
              index: 8,
              child: AppButton(
                text: AppStrings.createAccount,
                textStyle: TextStyleTheme.textStyle16Bold.copyWith(
                  color: AppColor.white,
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    navigateTo(toPage: LoginScreen());
                  }
                },
              ),
            ),
            verticalSpace(24),
            AnimatedWrapper(
              index: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomDivider(margin: EdgeInsets.only(right: 8.w)),
                  Text(
                    AppStrings.orSignupWith,
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
                  delay: Duration(milliseconds: 10 * 150),
                  child: CustomSocial(image: AppImages.google),
                ),
                ElasticIn(
                  duration: Duration(milliseconds: 400),
                  delay: Duration(milliseconds: 11 * 150),
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
