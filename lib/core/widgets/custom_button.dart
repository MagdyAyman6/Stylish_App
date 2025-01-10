import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.style,
    required this.onTap,
    required this.color,
    required this.width,
    required this.height,
    required this.borderColor,
  });

  final String text;
  final TextStyle style;
  final VoidCallback onTap;
  final Color color;
  final Color borderColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(8.r),
          color: color,
        ),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
