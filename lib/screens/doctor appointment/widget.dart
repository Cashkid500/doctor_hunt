import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextRow extends StatelessWidget {
  const TextRow({
    super.key,
    required this.rowTextPath,
  });

  final rowTextPath;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        rowTextPath,
        style: TextStyle(
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          color: blackText,
        ),
      ),
    );
  }
}

class RowContainerWidget extends StatelessWidget {
  const RowContainerWidget({
    super.key,
    required this.imagePath,
    required this.textPath,
  });

  final String imagePath;
  final String textPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148.sp,
      width: 100.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(6.sp),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 3.sp),
          Center(
            child: Text(
              textPath,
              style: TextStyle(
                  color: royalIntrigue,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}

class AppointmentDetails extends StatelessWidget {
  const AppointmentDetails({
    super.key,
    required this.isFavorite,
  });

  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123.sp,
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
              Image.asset(DoctorHuntAssetsPath.pediatrician),
              SizedBox(width: 10.sp),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 180.sp,
                          child: Text(
                            DoctorHuntText.pediatrician,
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
                    DoctorHuntText.cardiologistSpecialist,
                    style: TextStyle(
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: royalIntrigue),
                  ),
                  SizedBox(height: 10.sp),
                  Row(children: [
                    Image.asset(DoctorHuntAssetsPath.rating),
                    SizedBox(width: 40.sp),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: DoctorHuntText.dollarSymbol,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: greenTeal,
                          ),
                        ),
                        TextSpan(
                          text: DoctorHuntText.distanceCovered,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
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
