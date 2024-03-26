import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/signup/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const SignupScreen()));
      },
      child: Text(
        DoctorHuntText.skip,
        style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: royalIntrigue,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont),
      ),
    );
  }
}

class DummyText extends StatelessWidget {
  const DummyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 275.sp,
      child: Text(
        DoctorHuntText.dummyText,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 12.8.sp,
            fontWeight: FontWeight.w400,
            color: royalIntrigue,
            height: 1.8.sp,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont),
      ),
    );
  }
}

class OnboardingText extends StatelessWidget {
  const OnboardingText({
    super.key,
    required this.onboardingtextpath,
  });

  final String onboardingtextpath;

  @override
  Widget build(BuildContext context) {
    return Text(
      onboardingtextpath,
      style: TextStyle(
          fontSize: 28.sp,
          fontWeight: FontWeight.w600,
          color: blackText,
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont),
    );
  }
}
