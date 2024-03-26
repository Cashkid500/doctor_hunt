import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExtractedRowWidget extends StatelessWidget {
  const ExtractedRowWidget({
    super.key,
    this.onTap,
    required this.textPath,
  });

  final String textPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textPath,
          style: TextStyle(
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              fontSize: 18.sp,
              color: royalIntrigue,
              fontWeight: FontWeight.w300),
        ),
        GestureDetector(
          onTap: onTap,
          child: Icon(
            Icons.chevron_right,
            color: royalIntrigue,
          ),
        ),
      ],
    );
  }
}
