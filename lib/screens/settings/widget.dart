import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreOptionsRow extends StatelessWidget {
  const MoreOptionsRow({
    super.key,
    this.onTap,
    required this.textPath1,
    required this.textPath2,
  });

  final String textPath1;
  final String textPath2;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        textPath1,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          color: royalIntrigue,
        ),
      ),
      Spacer(),
      Text(
        textPath2,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          color: royalIntrigue,
        ),
      ),
      GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.chevron_right,
          color: royalIntrigue,
        ),
      ),
    ]);
  }
}

class AccountSettingsRow extends StatelessWidget {
  const AccountSettingsRow({
    super.key,
    this.onTap,
    required this.imagePath,
    required this.textPath,
  });

  final String textPath;
  final String imagePath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(imagePath),
      SizedBox(width: 20.sp),
      Text(
        textPath,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          color: royalIntrigue,
        ),
      ),
      Spacer(),
      GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.chevron_right,
          color: royalIntrigue,
        ),
      ),
    ]);
  }
}
