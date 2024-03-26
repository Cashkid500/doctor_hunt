import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastRowContainer extends StatelessWidget {
  const LastRowContainer({
    super.key,
    required this.isFavorite,
    required this.starTextPath,
    required this.doctorsNamePath,
    required this.hourPath,
    required this.doctorImagePath,
  });

  final bool isFavorite;
  final String starTextPath;
  final String doctorsNamePath;
  final String hourPath;
  final String doctorImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.sp,
      width: 106.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
            color: whiteText, width: 1.0.sp, style: BorderStyle.solid),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 10.sp),
        child: Column(
          children: [
            Row(children: [
              Icon(
                !isFavorite ? Icons.favorite_border_sharp : Icons.favorite,
                color: !isFavorite ? Colors.grey : Colors.red,
                size: 20.sp,
              ),
              Spacer(),
              Image.asset(DoctorHuntAssetsPath.star),
              SizedBox(
                width: 5.sp,
              ),
              Text(
                starTextPath,
                style: TextStyle(
                    fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: blackText),
              ),
            ]),
            SizedBox(
              height: 2.sp,
            ),
            Container(
              height: 54.sp,
              width: 54.sp,
              child: Image.asset(doctorImagePath),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Text(
              doctorsNamePath,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                color: blackText,
              ),
            ),
            SizedBox(
              height: 5.sp,
            ),
            RichText(
              text: TextSpan(
                children: [
                TextSpan(
                  text: DoctorHuntText.dollarSymbol,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    color: greenTeal,
                  ),
                ),
                TextSpan(
                  text: hourPath,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w300,
                    fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    color: royalIntrigue,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    super.key,
    required this.isFavorite,
    required this.imagePath,
    required this.namePath,
    required this.specializationPath,
  });

  final bool isFavorite;
  final String imagePath;
  final String namePath;
  final String specializationPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.sp,
      width: 160.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
            color: whiteText, width: 1.0.sp, style: BorderStyle.solid),
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 10.sp, top: 10.sp),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                !isFavorite ? Icons.favorite_border_sharp : Icons.favorite,
                color: !isFavorite ? Colors.grey : Colors.red,
                size: 20.sp,
              ),
            ],
          ),
          SizedBox(
            height: 2.sp,
          ),
          Image.asset(imagePath),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            namePath,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              color: blackText,
            ),
          ),
          SizedBox(
            height: 5.sp,
          ),
          Text(
            specializationPath,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              color: greenTeal,
            ),
          ),
        ]),
      ),
    );
  }
}
