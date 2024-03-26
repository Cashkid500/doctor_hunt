import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Doctors extends StatelessWidget {
  const Doctors({
    super.key,
    required this.doctorsImagePath,
    required this.namePath,
    required this.isFavorite,
    required this.doctorSpecializationPath,
    required this.digitPath,
    required this.viewsPath,
  });

  final String doctorsImagePath;
  final String namePath;
  final bool isFavorite;
  final String doctorSpecializationPath;
  final String digitPath;
  final String viewsPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.sp),
        border:
            Border.all(width: 1.sp, color: whiteText, style: BorderStyle.solid),
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
              Image.asset(doctorsImagePath),
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
                          width: 185.sp,
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
                    doctorSpecializationPath,
                    style: TextStyle(
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: royalIntrigue),
                  ),
                  SizedBox(height: 10.sp),
                  Row(children: [
                    Image.asset(DoctorHuntAssetsPath.rating),
                    SizedBox(width: 29.sp),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: digitPath,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: blackText,
                          ),
                        ),
                        TextSpan(
                          text: viewsPath,
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
    );
  }
}

class DoctorsWidget extends StatelessWidget {
  const DoctorsWidget({
    super.key,
    required this.imagePath,
    required this.doctorNamePath,
    required this.specializationPath,
  });

  final String imagePath;
  final String doctorNamePath;
  final String specializationPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.sp,
      width: 136.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(12.sp),
        border:
            Border.all(color: whiteText, width: 1.sp, style: BorderStyle.solid),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset(imagePath),
        SizedBox(height: 10.sp),
        Text(
          doctorNamePath,
          style: TextStyle(
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: blackText),
        ),
        SizedBox(
          height: 3.sp,
        ),
        Text(
          specializationPath,
          style: TextStyle(
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              fontSize: 13.sp,
              fontWeight: FontWeight.w300,
              color: royalIntrigue),
        ),
        SizedBox(
          height: 3.sp,
        ),
        Image.asset(DoctorHuntAssetsPath.rating),
      ]),
    );
  }
}