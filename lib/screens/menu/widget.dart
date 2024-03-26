import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuRowWidget extends StatelessWidget {
  const MenuRowWidget({
    super.key,
    this.onTap,
    required this.menuAssetPath,
    required this.menuTextPath,
  });

  final String menuAssetPath;
  final String menuTextPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(menuAssetPath),
        SizedBox(width: 20.sp),
        Text(
          menuTextPath,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            color: whiteText,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Icon(
            Icons.chevron_right,
            color: whiteText,
            size: 15.sp,
          ),
        ),
      ],
    );
  }
}