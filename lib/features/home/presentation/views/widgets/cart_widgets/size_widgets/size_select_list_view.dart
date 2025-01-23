// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:stylish/features/home/presentation/views/widgets/cart_widgets/size_widgets/custom_size_container.dart';
//
// class SizeSelectListView extends StatefulWidget {
//   const SizeSelectListView({super.key});
//
//   @override
//   State<SizeSelectListView> createState() => _SizeSelectListViewState();
// }
//
// class _SizeSelectListViewState extends State<SizeSelectListView> {
//   List<String> sizes = ["6 UK", "7 UK", "8 UK", "9 UK", "10 UK"];
//   int selectedIndex = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 35.h,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) => GestureDetector(
//           onTap: () {
//             setState(() {
//               selectedIndex = index; // Update the selected index
//             });
//           },
//           child: CustomSizeContainer(
//             selected: selectedIndex == index,
//             sizeText: sizes[index],
//           ),
//         ),
//         itemCount: sizes.length,
//       ),
//     );
//   }
// }
