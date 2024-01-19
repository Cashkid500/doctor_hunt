import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 166, 202, 167), // Top
                whiteText, // Center
                const Color.fromARGB(255, 166, 202, 167), // Bottom
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Back Arrow
                    RowWidget(rowText: DoctorHuntText.privacyPolicy),
                  

                    SizedBox(height: 15.sp),

                    // Text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          DoctorHuntText.appPolicy,
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              color: royalIntrigue),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.sp),

                    // Text
                    SizedBox(
                      width: 337.sp,
                      child: Text(
                        DoctorHuntText.longWords,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            height: 1.5.sp,
                            color: skyline),
                      ),
                    ),

                    SizedBox(height: 20.sp),

                    // Text
                  SizedBox(
                    width: 337.sp,
                    child: Text(
                      DoctorHuntText.theStandard,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          height: 1.5.sp,
                          color: skyline,
                      ),
                      ),
                  ),
                    
                    SizedBox(height: 20.sp),
                    
                    // Text
                    SizedBox(
                      width: 337.sp,
                      child: Text(
                        DoctorHuntText.established,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          height: 1.5.sp,
                          color: skyline,
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
