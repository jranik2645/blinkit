import 'package:blinkit/repository/screen/cart/cart_screen.dart';
import 'package:blinkit/repository/screen/category/category_screen.dart';
import 'package:blinkit/repository/screen/home/home_screen.dart';
import 'package:blinkit/repository/screen/print/print_screen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class BottomnavScreen extends StatefulWidget {
  const BottomnavScreen({super.key});

  @override
  State<BottomnavScreen> createState() => _BottomnavScreenState();
}

class _BottomnavScreenState extends State<BottomnavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "home 1.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "shopping-bag 1.png"),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "category 1.png"),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "printer 1.png"),
            label: 'Print',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
