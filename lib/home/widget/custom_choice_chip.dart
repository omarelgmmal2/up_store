import 'package:e_commerce/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final Function(bool?) onSelected;

  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {

    // عامل زي جزء ال storage في التطبيق

    return ChoiceChip(
      label: Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? AppColor.white : null),
    );
  }
}
