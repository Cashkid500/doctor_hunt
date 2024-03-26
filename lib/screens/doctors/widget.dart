import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsScreenWidget extends StatelessWidget {
  const DoctorsScreenWidget({
    super.key,
    this.onTap,
    required this.imagePath,
    required this.namePath,
    required this.isFavorite,
    required this.specializationPath,
  });

  final String imagePath;
  final String namePath;
  final bool isFavorite;
  final String specializationPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 104.sp,
        decoration: BoxDecoration(
          color: whiteText,
          borderRadius: BorderRadius.circular(8.sp),
          border: Border.all(
              width: 1.sp, color: whiteText, style: BorderStyle.solid),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 10.sp,
            right: 10.sp,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imagePath),
                SizedBox(width: 10.sp),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 180.sp,
                            child: Text(
                              namePath,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                color: blackText,
                              ),
                            ),
                          ),
                          Icon(
                            !isFavorite
                                ? Icons.favorite_border_sharp
                                : Icons.favorite,
                            color: !isFavorite ? Colors.grey : Colors.red,
                            size: 20.sp,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.sp),
                    Text(
                      specializationPath,
                      style: TextStyle(
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: royalIntrigue),
                    ),
                    SizedBox(height: 10.sp),
                    Row(children: [
                      Image.asset(DoctorHuntAssetsPath.rating),
                      SizedBox(width: 30.sp),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: DoctorHuntText.twoPointEight,
                            style: TextStyle(
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: blackText,
                            ),
                          ),
                          TextSpan(
                            text: DoctorHuntText.views,
                            style: TextStyle(
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: royalIntrigue,
                            ),
                          ),
                        ]),
                      ),
                    ]),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
