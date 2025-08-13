import 'package:e_commerce/core/design/app_button.dart';
import 'package:e_commerce/core/design/app_image.dart';
import 'package:e_commerce/core/design/app_input.dart';
import 'package:e_commerce/core/design/custom_app_bar.dart';
import 'package:e_commerce/core/regex/app_regex.dart';
import 'package:e_commerce/core/utils/app_color.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/spacing.dart';
import 'package:e_commerce/core/utils/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({super.key});

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final streetController = TextEditingController();
  final userNameController = TextEditingController();
  final postalCodeController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final countryController = TextEditingController();
  final phoneFocusNode = FocusNode();
  final userNameFocusNode = FocusNode();
  final streetFocusNode = FocusNode();
  final postalCodeFocusNode = FocusNode();
  final cityFocusNode = FocusNode();
  final stateFocusNode = FocusNode();
  final countryFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: Text(
          "Add new Address",
          style: TextStyleTheme.textStyle20Bold.copyWith(color: AppColor.black),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                AppInput(
                  hintText: "Name",
                  prefixIcon: AppImage(AppImages.user),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  controller: userNameController,
                  focusNode: userNameFocusNode,
                  onFieldSubmitted: (p0) {
                    FocusScope.of(context).requestFocus(phoneFocusNode);
                  },
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !AppRegex.isUserNameValid(value)) {
                      return "ادخل الاسم مجددا";
                    }
                    return null;
                  },
                ),
                AppInput(
                  hintText: "Phone Number",
                  prefixIcon: AppImage(AppImages.phone),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  focusNode: phoneFocusNode,
                  onFieldSubmitted: (p0) {
                    FocusScope.of(context).requestFocus(streetFocusNode);
                  },
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !AppRegex.isPhoneNumberValid(value)) {
                      return "ادخل رقم هاتفك";
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: AppInput(
                        hintText: "Street",
                        prefixIcon: Icon(Iconsax.building_34),
                        controller: streetController,
                        focusNode: streetFocusNode,
                        onFieldSubmitted: (p0) {
                          FocusScope.of(
                            context,
                          ).requestFocus(postalCodeFocusNode);
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "ادخل عنوان الشارع";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.streetAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    horizontalSpace(12),
                    Expanded(
                      child: AppInput(
                        hintText: "Postal Code",
                        prefixIcon: AppImage(AppImages.code),
                        controller: postalCodeController,
                        focusNode: postalCodeFocusNode,
                        onFieldSubmitted: (p0) {
                          FocusScope.of(context).requestFocus(cityFocusNode);
                        },
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !AppRegex.hasNumber(value)) {
                            return "ادخل الكود مجددا";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: AppInput(
                        hintText: "City",
                        prefixIcon: AppImage(AppImages.building),
                        controller: cityController,
                        focusNode: cityFocusNode,
                        onFieldSubmitted: (p0) {
                          FocusScope.of(context).requestFocus(stateFocusNode);
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "ادخل مدينتك";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    horizontalSpace(12),
                    Expanded(
                      child: AppInput(
                        hintText: "State",
                        prefixIcon: AppImage(AppImages.activity),
                        controller: stateController,
                        focusNode: stateFocusNode,
                        onFieldSubmitted: (p0) {
                          FocusScope.of(context).requestFocus(countryFocusNode);
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "ادخل نشاطك";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],
                ),
                AppInput(
                  hintText: "Country",
                  prefixIcon: AppImage(AppImages.world),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  controller: countryController,
                  focusNode: countryFocusNode,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "ادخل قريتك";
                    }
                    return null;
                  },
                  paddingBottom: 30.h,
                ),
              ],
            ),
          ),
          AppButton(
            text: "Save",
            textStyle: TextStyleTheme.textStyle16Bold.copyWith(
              color: AppColor.white,
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
