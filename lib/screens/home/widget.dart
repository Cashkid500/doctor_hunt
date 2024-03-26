import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FemaleDoctorWidget extends StatelessWidget {
  const FemaleDoctorWidget({
    super.key,
    this.border,
    required this.femaleDoctorImagePath,
    required this.femaleDoctorName,
    required this.femaleDoctorSpecializationPath,
  });

  final String femaleDoctorImagePath;
  final String femaleDoctorName;
  final String femaleDoctorSpecializationPath;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 264.sp,
      width: 190.sp,
      decoration: BoxDecoration(
        border: border,
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset(femaleDoctorImagePath),
        SizedBox(
          height: 20.sp,
        ),
        Text(
          femaleDoctorName,
          style: TextStyle(
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: blackText),
        ),
        SizedBox(
          height: 5.sp,
        ),
        Text(
          femaleDoctorSpecializationPath,
          style: TextStyle(
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              fontSize: 13.sp,
              fontWeight: FontWeight.w300,
              color: royalIntrigue),
        ),
        SizedBox(
          height: 5.sp,
        ),
        Image.asset(DoctorHuntAssetsPath.rating),
      ]),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.imagePath,
    this.gradient,
  });

  final String imagePath;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.sp,
      width: 80.sp,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Image.asset(imagePath),
    );
  }
}

class PopularDoctorWidget extends StatelessWidget {
  const PopularDoctorWidget({
    super.key,
    this.onTap,
    required this.popularDoctorTextPath,
  });

  final String popularDoctorTextPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          popularDoctorTextPath,
          style: TextStyle(
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: blackText),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            DoctorHuntText.see,
            style: TextStyle(
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: royalIntrigue,
            ),
          ),
        ),
      ]),
    );
  }
}