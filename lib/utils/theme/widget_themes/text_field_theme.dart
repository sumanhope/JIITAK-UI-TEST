import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class MFTextFormFieldTheme {
  MFTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MFColors.darkGrey,
    suffixIconColor: MFColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: MFSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: MFSizes.fontSizeLg, color: MFColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: MFSizes.fontSizeSm, color: MFColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: MFColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MFSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: Color.fromARGB(255, 218, 218, 218)),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MFSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: Color(0xFFE8E8E8)),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MFSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: Color(0xFFE8E8E8)),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MFSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: MFColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MFSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: MFColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MFColors.darkGrey,
    suffixIconColor: MFColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: MFSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: MFSizes.fontSizeMd, color: MFColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: MFSizes.fontSizeSm, color: MFColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: MFColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MFSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 3, color: MFColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MFSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 3, color: MFColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MFSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 3, color: MFColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MFSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 3, color: MFColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MFSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 3, color: MFColors.warning),
    ),
  );
}
