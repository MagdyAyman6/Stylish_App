// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../../../../core/utils/app_color.dart';
// import '../../../../../../../core/utils/styles.dart';
//
// class CustomSizeContainer extends StatefulWidget {
//   const CustomSizeContainer({
//     super.key,
//     required this.selected,
//     required this.sizeText,
//   });
//
//   final bool selected; // Whether this container is selected
//   final String sizeText; // Text to display (e.g., 6UK, 7UK)
//
//   @override
//   State<CustomSizeContainer> createState() => _CustomSizeContainerState();
// }
//
// class _CustomSizeContainerState extends State<CustomSizeContainer> {
//   bool isSelected = false;
//
//   void toggleSelection() {
//     setState(() {
//       isSelected = !isSelected; // Toggle the isSelected state
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: toggleSelection,
//       child: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.all(8.r),
//         margin: EdgeInsets.symmetric(horizontal: 4.w),
//         width: 50.w,
//         height: 32.h,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(4.r),
//           color: isSelected ? AppColor.kPrimaryColor : AppColor.kWhiteColor,
//           border: Border.all(
//             color: isSelected
//                 ? AppColor.kPrimaryColor
//                 : AppColor.kPrimaryColor.withOpacity(0.5),
//             width: 1.5.w,
//           ),
//         ),
//         child: Text(
//           widget.sizeText,
//           style: Styles.textStyle12.copyWith(
//             color: isSelected
//                 ? AppColor.kWhiteColor
//                 : AppColor.kPrimaryColor.withOpacity(0.7),
//           ),
//         ),
//       ),
//     );
//   }
// }
