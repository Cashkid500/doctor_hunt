import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const DashboardScreen(),
    // const FavouriteDoctorScreen(),
    // const BookScreen(),
    // const ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 78.sp,
        // width: 375.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          )
        ),
        child: BottomNavigationBar(
         selectedItemColor: whiteText,
           unselectedItemColor:blackText,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: whiteText,
              icon: Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedIndex == 0 ? greenTeal : whiteText,
                ),
                 padding: EdgeInsets.all(12.sp),
                child: Icon(
                  Icons.home,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedIndex == 1 ? greenTeal : whiteText,
                ),
                 padding: EdgeInsets.all(12.sp),
                child: Icon(
                  Icons.favorite, color: royalIntrigue,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedIndex == 2 ? greenTeal : whiteText,
                ),
                 padding: EdgeInsets.all(12.sp),
                child: Image.asset(DoctorHuntAssetsPath.book),
                ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selectedIndex == 3 ? greenTeal : whiteText,
                ),
                 padding: EdgeInsets.all(12.sp),
                child: Image.asset(DoctorHuntAssetsPath.chat),
                ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
