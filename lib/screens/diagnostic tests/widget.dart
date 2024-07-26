import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiagnosticTest2SecondContainer extends StatelessWidget {
  const DiagnosticTest2SecondContainer({
    super.key,
    this.onPressed,
    required this.headerTextPath,
    required this.testsPath,
    required this.imagePath,
    required this.dollarPath,
    required this.dollar2Path,
  });

  final String headerTextPath;
  final String testsPath;
  final String imagePath;
  final String dollarPath;
  final String dollar2Path;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.sp),
      child: Container(
        height: 427.sp,
        width: 335.sp,
        decoration: BoxDecoration(
          color: whiteText,
          borderRadius: BorderRadius.circular(6.sp),
          border: Border.all(
              width: 1.sp, color: whiteText, style: BorderStyle.solid),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.sp, top: 10.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    headerTextPath,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      color: blackText,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.sp),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.sp),
                  child: Text(
                    DoctorHuntText.ideal,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      color: royalIntrigue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.sp),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.sp),
                  child: Container(
                    height: 32.sp,
                    width: 130.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.sp),
                      border: Border.all(color: greenTeal),
                    ),
                    child: Center(
                      child: Text(
                        testsPath,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: greenTeal),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.sp),
            Image.asset(imagePath),
            SizedBox(height: 10.sp),
            Row(children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.sp,
                ),
                width: 175.sp,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: dollarPath,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: blackText,
                        ),
                      ),
                      TextSpan(
                        text: dollar2Path,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: royalIntrigue,
                        ),
                      ),
                      TextSpan(
                        text: DoctorHuntText.off,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: greenTeal,
                        ),
                      ),
                      TextSpan(
                        text: DoctorHuntText.cashback,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: royalIntrigue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10.sp),
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
                  backgroundColor: WidgetStateProperty.all(greenTeal),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.sp),
                    ),
                  ),
                  fixedSize: WidgetStateProperty.all(Size(112.sp, 34.sp)),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class DiagnosticTest2Container extends StatelessWidget {
  const DiagnosticTest2Container({
    super.key,
    this.onPressed,
    required this.headerTextPath,
    required this.testsPath,
    required this.imagePath,
    required this.dollarPath,
    required this.dollar2Path,
  });

  final String headerTextPath;
  final String testsPath;
  final String imagePath;
  final String dollarPath;
  final String dollar2Path;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.sp),
      child: Container(
        height: 427.sp,
        width: 335.sp,
        decoration: BoxDecoration(
          color: whiteText,
          borderRadius: BorderRadius.circular(6.sp),
          border: Border.all(
              width: 1.sp, color: whiteText, style: BorderStyle.solid),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.sp, top: 10.sp),
              child: Text(
                headerTextPath,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                  color: blackText,
                ),
              ),
            ),
            SizedBox(height: 10.sp),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.sp),
                  child: Text(
                    DoctorHuntText.ideal,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      color: royalIntrigue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.sp),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.sp),
                  child: Container(
                    height: 32.sp,
                    width: 130.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.sp),
                      border: Border.all(color: greenTeal),
                    ),
                    child: Center(
                      child: Text(
                        testsPath,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: greenTeal),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.sp),
            Image.asset(imagePath),
            SizedBox(height: 10.sp),
            Row(children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.sp,
                ),
                width: 175.sp,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: dollarPath,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: blackText,
                        ),
                      ),
                      TextSpan(
                        text: dollar2Path,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: royalIntrigue,
                        ),
                      ),
                      TextSpan(
                        text: DoctorHuntText.off,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: greenTeal,
                        ),
                      ),
                      TextSpan(
                        text: DoctorHuntText.cashback,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: royalIntrigue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10.sp),
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
                  backgroundColor: WidgetStateProperty.all(greenTeal),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.sp),
                    ),
                  ),
                  fixedSize: WidgetStateProperty.all(Size(112.sp, 34.sp)),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
