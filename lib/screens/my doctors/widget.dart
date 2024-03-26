import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.searchPath,
  });

  final String searchPath;

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
          hintText: searchPath,
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
                color: whiteText, width: 0.5.sp, style: BorderStyle.solid),
          ),
          prefixIcon: Icon(Icons.search, color: royalIntrigue),
          suffixIcon: Icon(Icons.close, color: royalIntrigue),
        ),
      ),
    );
  }
}

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({
    super.key,
    this.onPressed,
    required this.imagePath,
    required this.namePath,
    required this.specializationPath,
    required this.experiencePath,
    required this.percentagePath,
    required this.patientPath,
    required this.isFavorite,
    required this.timePath,
  });

  final String imagePath;
  final String namePath;
  final String specializationPath;
  final String experiencePath;
  final String percentagePath;
  final String patientPath;
  final bool isFavorite;
  final String timePath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.sp,
      width: 335.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.sp),
        border:
            Border.all(width: 1.sp, color: whiteText, style: BorderStyle.solid),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 20.sp),
        child: Column(
          children: [
          //***************** First Row *****************
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 87.sp,
                  width: 92.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.sp),
                  ),
                  child: Image.asset(imagePath),
                ),
                SizedBox(width: 10.sp),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    namePath,
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        color: blackText),
                  ),
                  Text(
                    specializationPath,
                    style: TextStyle(
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: greenTeal),
                  ),
                  SizedBox(height: 10.sp),
                  Text(
                    experiencePath,
                    style: TextStyle(
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: royalIntrigue),
                  ),
                  SizedBox(height: 10.sp),
                  Row(children: [
                    Container(
                      height: 10.sp,
                      width: 10.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          color: greenTeal),
                    ),
                    SizedBox(width: 5.sp),
                    Text(
                      percentagePath,
                      style: TextStyle(
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          color: royalIntrigue),
                    ),
                    SizedBox(width: 10.sp),
                    Container(
                      height: 10.sp,
                      width: 10.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          color: greenTeal),
                    ),
                    SizedBox(width: 5.sp),
                    Text(
                      patientPath,
                      style: TextStyle(
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          color: royalIntrigue),
                    ),
                  ]),
                ]),
                Expanded(
                  child: Icon(
                    !isFavorite ? Icons.favorite_border_sharp : Icons.favorite,
                    color: !isFavorite ? Colors.grey : Colors.red,
                    size: 20.sp,
                  ),
                ),
              ]),
          SizedBox(height: 10.sp),

          // Second Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DoctorHuntText.nextAvailable,
                    style: TextStyle(
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: greenTeal),
                  ),
                  SizedBox(height: 5.sp),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontWeight: FontWeight.w700,
                        fontSize: 13.sp,
                        color: royalIntrigue,
                      ),
                      children: [
                        TextSpan(text: timePath),
                        TextSpan(
                          text: DoctorHuntText.am,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontWeight: FontWeight.w300,
                            fontSize: 13.sp,
                            color: royalIntrigue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30.sp),
              ElevatedButton(
                onPressed: onPressed,
                child: Text(
                  DoctorHuntText.bookNow,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      color: whiteText),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(greenTeal),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.sp),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all(Size(112.sp, 34.sp)),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}