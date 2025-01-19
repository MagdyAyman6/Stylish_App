import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import '../utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxLiens = 1,
    this.onChanged,
    this.onSaved,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
  });

  final String hint;
  final int maxLiens;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      maxLines: maxLiens,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 16.w),
        hintText: hint,
        fillColor: AppColor.kFormFieldBackground,
        // filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: Styles.textStyle12.copyWith(fontWeight: FontWeight.w400),
        border: buildOutlineInputBorder(AppColor.kFormFieldBorderColor),
        enabledBorder: buildOutlineInputBorder(AppColor.kFormFieldBorderColor),
        focusedBorder: buildOutlineInputBorder(AppColor.kFormFieldBorderColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
