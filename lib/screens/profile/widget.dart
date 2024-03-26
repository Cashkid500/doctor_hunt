import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        height: 30.sp,
        width: 30.sp,
        decoration: BoxDecoration(
            color: whiteText, borderRadius: BorderRadius.circular(10.r)),
        child: GestureDetector(
          onTap: onTap,
          child: Icon(Icons.keyboard_arrow_left, color: royalIntrigue),
        ),
      ),

      SizedBox(width: 20.sp),

      //***************** Profile *****************
      Text(
        DoctorHuntText.profile,
        style: TextStyle(
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            color: whiteText),
      ),
    ]);
  }
}