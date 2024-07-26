import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/onboarding/widget.dart';
import 'package:doctor_hunt/screens/signup/sign_up.dart';
import 'package:doctor_hunt/screens/signup/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        children: [
          Stack(
            children: [
              //***************** Background Ellipse *****************
              Image.asset(DoctorHuntAssetsPath.ellipse),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),

                    //***************** Onboarding1 Image *****************
                    Image.asset(DoctorHuntAssetsPath.onboarding1),
                    SizedBox(height: 60.sp),

                    //***************** Onboarding1 Text *****************
                    OnboardingText(
                        onboardingtextpath: DoctorHuntText.onboarding1),
                    SizedBox(height: 10.sp),

                    //***************** Dummy Text *****************
                    DummyText(),
                    Spacer(),

                    //***************** Get Started Button *****************
                    ElevatedButtonWidget(
                      elevatedButtonPath: DoctorHuntText.getStarted,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignupScreen()),
                        );
                      },
                    ),

                    //***************** Skip Button *****************
                    SkipButton(),
                    SizedBox(height: 20.sp),
                  ],
                ),
              ),
            ],
          ),

          //***************** Onboarding 2 *****************
          Stack(
            children: [
              Positioned(
                right: 0.sp,

                //***************** Background Ellipse2 *****************
                child: Image.asset(DoctorHuntAssetsPath.ellipse2),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),

                    //***************** Onboarding2 Image *****************
                    Image.asset(DoctorHuntAssetsPath.onboarding2),
                    SizedBox(height: 60.sp),

                    //***************** Onboarding2 Text *****************
                    OnboardingText(
                        onboardingtextpath: DoctorHuntText.onboarding2),
                    SizedBox(height: 10.sp),

                    //***************** Dummy Text *****************
                    DummyText(),
                    Spacer(),

                    //***************** Get Started Button *****************
                    ElevatedButtonWidget(
                      elevatedButtonPath: DoctorHuntText.getStarted,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignupScreen()),
                        );
                      },
                    ),

                    //***************** Skip Button *****************
                    SkipButton(),
                    SizedBox(height: 20.sp),
                  ],
                ),
              ),
            ],
          ),

          //***************** Onboarding 3 *****************
          Stack(
            children: [
              //***************** Background Ellipse3 *****************
              Image.asset(DoctorHuntAssetsPath.ellipse),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),

                    //***************** Onboarding3 Image *****************
                    Image.asset(DoctorHuntAssetsPath.onboarding3),
                    SizedBox(height: 60.sp),

                    //***************** Onboarding3 Text *****************
                    OnboardingText(
                        onboardingtextpath: DoctorHuntText.onboarding3),
                    SizedBox(height: 10.sp),

                    //***************** Dummy Text *****************
                    DummyText(),
                    Spacer(),

                    //***************** Get Started Button *****************
                    ElevatedButtonWidget(
                      elevatedButtonPath: DoctorHuntText.getStarted,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignupScreen()),
                        );
                      },
                    ),

                    //***************** Skip Button *****************
                    SkipButton(),
                    SizedBox(height: 20.sp),
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

