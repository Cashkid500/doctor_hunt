import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text("Join us to start searching",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: blackText,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    ),
                  ),
              ),
              SizedBox(height: 10.sp),
              SizedBox(
                width: 299.sp,
                child: Text("You can search course, apply course and find scholarship for abroad studies",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.8.sp,
                  color: royalIntrigue,
                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                ),
                ),
              ),
              SizedBox(height: 60.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  // Google
                  Container(
                    width: 150.sp,
                    height: 45.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.sp),
                      color: whiteText,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          DoctorHuntAssetsPath.google
                        ),
                        Text(
                          "Google",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                            color: royalIntrigue,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont
                          ),
                        ),
                      ]
                    ),
                  ),
                  
                  // Facebook
                  Container(
                    width: 150.sp,
                    height: 45.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.sp),
                      color: whiteText,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(DoctorHuntAssetsPath.facebook),
                          Text(
                            "Facebook",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w300,
                                color: royalIntrigue,
                                fontFamily:
                                    DoctorHuntAssetsPath.doctorHuntFont),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 20.sp),
              SizedBox(
                height: 54.sp,
                width: 320.sp,
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
                    isCollapsed: true,
                    hintText: "Name",
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
                      borderSide: BorderSide(color: royalIntrigue, width: 1.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
