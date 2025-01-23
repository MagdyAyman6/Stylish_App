import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/my_home_page_view_body.dart';
import '../../cart_view.dart';
import '../../my_wishlist_view.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          MyHomePageViewBody(controller: _pageController),
          const MyWishlistView(),
          const CartView(),
          const Center(child: Text("Search Screen")),
          const Center(child: Text("Settings Screen")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        backgroundColor: AppColor.kWhiteColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.kSelectedItemNavBar,
        unselectedItemColor: AppColor.kBlackColor,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}
