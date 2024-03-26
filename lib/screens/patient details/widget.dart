import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
    required this.headerPath,
  });

  final String headerPath;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerPath,
      style: TextStyle(
        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: blackText,
      ),
    );
  }
}

class FieldWidget extends StatelessWidget {
  const FieldWidget({
    super.key,
    required this.fieldPath,
  });

  final String fieldPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.sp,
      width: 320.sp,
      child: TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
          isCollapsed: true,
          hintText: fieldPath,
          hintStyle: TextStyle(
            color: royalIntrigue,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
          ),
          filled: true,
          fillColor: whiteText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(
                color: Colors.grey, width: 0.1.sp, style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}
