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

//******************** Profile TextFormField ********************
class ProfileTextFieldWidget extends StatelessWidget {
  const ProfileTextFieldWidget({
    super.key,
    required this.titleTextPath,
    required this.hintTextPath,
  });

  final String titleTextPath;
  final String hintTextPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.sp, top: 3.sp),
      child: Container(
        height: 60.sp,
        width: 320.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
              color: royalIntrigue, width: 0.5.sp, style: BorderStyle.solid),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.sp, top: 5.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //***************** Name Text *****************
              Text(
                titleTextPath,
                style: TextStyle(
                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: greenTeal,
                ),
              ),

              SizedBox(height: 5.sp),

              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isCollapsed: true,
                  hintText: hintTextPath,
                  hintStyle: TextStyle(
                    color: royalIntrigue,
                    fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 