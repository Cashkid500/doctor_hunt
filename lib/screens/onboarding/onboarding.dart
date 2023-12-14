import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        children: [
          Stack(
            children: [
              
              // Background Ellipse
              Image.asset(DoctorHuntAssetsPath.ellipse),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    
                    // Onboarding1 Image
                    Image.asset(DoctorHuntAssetsPath.onboarding1),
                    SizedBox(height: 60.sp,),

                    // Onboarding1 Text
                    Text(DoctorHuntText.onboarding1,
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                          color: blackText,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont
                        ),
                        ),
                    SizedBox(height: 10.sp,),

                    // Dummy Text
                    SizedBox(
                      width: 275.sp,
                      child: Text(DoctorHuntText.dummyText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.8.sp,
                            fontWeight: FontWeight.w400,
                            color: royalIntrigue,
                            height: 1.8.sp,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont
                          ),
                          ),
                    ),
                    Spacer(),

                    // Get Started Button
                    ElevatedButton(onPressed: () {}, child: Text(DoctorHuntText.getStarted,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      color: whiteText
                    ),
                    ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(greenTeal),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(Size(290.sp, 50.sp)),
                    ),
                    ),

                    // Skip Button
                    TextButton(onPressed: () {}, child: Text(DoctorHuntText.skip,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: royalIntrigue,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont
                    ),
                    ),
                    ),
                    SizedBox(height: 20.sp,),
                  ],
                ),
              ),
            ],
          ),


          // Onboarding 2
          Stack(
            children: [
              Positioned(
                right: 0.sp,

                // Background Ellipse2
                child: Image.asset(DoctorHuntAssetsPath.ellipse2),
                ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                  
                    // Onboarding2 Image 
                    Image.asset(DoctorHuntAssetsPath.onboarding2),
                    SizedBox(height: 60.sp,),

                    // Onboarding2 Text
                    Text(DoctorHuntText.onboarding2,
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                          color: blackText,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont
                        ),
                        ),
                    SizedBox(height: 10.sp,),

                    // Dummy Text
                    SizedBox(
                      width: 275.sp,
                      child: Text(DoctorHuntText.dummyText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.8.sp,
                            fontWeight: FontWeight.w400,
                            color: royalIntrigue,
                            height: 1.8.sp,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont
                          ),
                          ),
                    ),
                    Spacer(),

                    // Get Started Button
                    ElevatedButton(onPressed: () {}, child: Text(DoctorHuntText.getStarted,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      color: whiteText
                    ),
                    ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(greenTeal),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(Size(290.sp, 50.sp)),
                    ),
                    ),

                    // Skip Button
                    TextButton(onPressed: () {}, child: Text(DoctorHuntText.skip,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: royalIntrigue,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont
                    ),
                    ),
                    ),
                    SizedBox(height: 20.sp,),
                  ],
                ),
              ),
            ],
          ),

          // Onboarding 3
          Stack(
            children: [
              // Background Ellipse3
              Image.asset(DoctorHuntAssetsPath.ellipse),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),

                    // Onboarding3 Image
                    Image.asset(DoctorHuntAssetsPath.onboarding3),
                    SizedBox(height: 60.sp,),

                    // Onboarding3 Text
                    Text(DoctorHuntText.onboarding3,
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                          color: blackText,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont
                        ),
                        ),
                    SizedBox(height: 10.sp,),

                    // Dummy Text
                    SizedBox(
                      width: 275.sp,
                      child: Text(DoctorHuntText.dummyText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.8.sp,
                            fontWeight: FontWeight.w400,
                            color: royalIntrigue,
                            height: 1.8.sp,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont
                          ),
                          ),
                    ),
                    Spacer(),

                    // Get Started Button
                    ElevatedButton(onPressed: () {}, child: Text(DoctorHuntText.getStarted,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      color: whiteText
                    ),
                    ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(greenTeal),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                    ),
                    fixedSize: MaterialStateProperty.all(Size(290.sp, 50.sp)),
                    ),
                    ),

                    // Skip Button
                    TextButton(onPressed: () {}, child: Text(DoctorHuntText.skip,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: royalIntrigue,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont
                    ),
                    ),
                    ),
                    SizedBox(height: 20.sp,),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
