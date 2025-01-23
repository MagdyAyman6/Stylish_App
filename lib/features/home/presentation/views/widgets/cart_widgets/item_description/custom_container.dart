import 'package:flutter/material.dart';
import '../../../../../../../core/utils/app_color.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.title,
      required this.icon,
      required this.onTap,
      required this.borderColor,
      required this.borderRadius,
      required this.borderWidth,
      required this.iconSize,
      required this.titleStyle,
      required this.iconColor});

  final double height;
  final double width;
  final double borderRadius;
  final double borderWidth;
  final String title;
  final TextStyle titleStyle;
  final Color borderColor;
  final Color iconColor;
  final Icon icon;
  final double iconSize;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: AppColor.kWhiteColor,
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon.icon,
              size: iconSize,
              color: iconColor,
            ),
            Text(
              title,
              style: titleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
