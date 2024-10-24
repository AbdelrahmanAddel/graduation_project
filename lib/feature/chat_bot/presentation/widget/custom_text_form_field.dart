import 'package:flutter/material.dart';

import '../../../../core/util/app_colors.dart';

TextFormField textFormField() {
  return TextFormField(
    decoration: InputDecoration(
      prefixIcon: const Icon(
        Icons.camera_alt,
        color: AppColors.grey,
      ),
      suffixIcon: const Icon(
        Icons.send,
        color: AppColors.green,
      ),
      fillColor: AppColors.textFormFieldColor,
      filled: true,
      hintText: 'Im feeling..',
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(25),
      ),
    ),
  );
}