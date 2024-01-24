import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiagnosticTest2Screen extends StatefulWidget {
  const DiagnosticTest2Screen({super.key});

  @override
  State<DiagnosticTest2Screen> createState() => _DiagnosticTest2ScreenState();
}

class _DiagnosticTest2ScreenState extends State<DiagnosticTest2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Back Arrow
                    RowWidget(rowText: DoctorHuntText.diagnosticTests),

                    SizedBox(height: 20.sp),

                    Text(
                      DoctorHuntText.fullBody,
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        color: blackText,
                        height: 1.5.sp,
                      ),
                    ),

                    SizedBox(height: 15.sp),

                    Row(
                      children: [
                        Text(
                          DoctorHuntText.discount,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: greenTeal,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30.sp),

                    Row(children: [
                      // Light Blue Container
                      Container(
                        height: 55.sp,
                        width: 50.sp,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              yimnBlue, // Top
                              venetianNights, // Bottom
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Icon(Icons.home, color: whiteText, size: 30.sp),
                      ),
                      SizedBox(width: 5.sp),
                      SizedBox(
                        width: 110.sp,
                        child: Text(
                          DoctorHuntText.pickup,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: blackText,
                            height: 1.5.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.sp),

                      // Red Container
                      Container(
                        height: 55.sp,
                        width: 50.sp,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              bloodBurst, // Top
                              livingCoral, // Bottom
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Image.asset(DoctorHuntAssetsPath.agent),
                      ),
                      SizedBox(width: 5.sp),
                      SizedBox(
                        width: 110.sp,
                        child: Text(
                          DoctorHuntText.practo,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: blackText,
                            height: 1.5.sp,
                          ),
                        ),
                      ),
                    ]),

                    SizedBox(height: 40.sp),

                    // Second Row
                    Row(children: [
                      // Light Blue Container
                      Container(
                        height: 55.sp,
                        width: 50.sp,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              mangoTango, // Top
                              fadedSunlight, // Bottom
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Image.asset(DoctorHuntAssetsPath.report2),
                      ),
                      SizedBox(width: 5.sp),
                      SizedBox(
                        width: 110.sp,
                        child: Text(
                          DoctorHuntText.electronicReport,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: blackText,
                            height: 1.5.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.sp),

                      // Green Container
                      Container(
                        height: 55.sp,
                        width: 50.sp,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              greenTeal, // Top
                              markerGreen, // Bottom
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Image.asset(DoctorHuntAssetsPath.followUp),
                      ),
                      SizedBox(width: 5.sp),
                      SizedBox(
                        width: 110.sp,
                        child: Text(
                          DoctorHuntText.followUp,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: blackText,
                            height: 1.5.sp,
                          ),
                        ),
                      ),
                    ]),

                    SizedBox(height: 40.sp),

                    // Recommended
                    Row(
                      children: [
                        Text(
                          DoctorHuntText.recommend,
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              color: blackText),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.sp),

                    // First Container
                    Padding(
                      padding: EdgeInsets.only(right: 20.sp),
                      child: Container(
                        height: 427.sp,
                        width: 335.sp,
                        decoration: BoxDecoration(
                          color: whiteText,
                          borderRadius: BorderRadius.circular(6.sp),
                          border: Border.all(
                              width: 1.sp,
                              color: whiteText,
                              style: BorderStyle.solid),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.sp, top: 10.sp),
                              child: Text(
                                DoctorHuntText.advanced,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
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
                                      fontFamily:
                                          DoctorHuntAssetsPath.doctorHuntFont,
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
                                        DoctorHuntText.tests,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: DoctorHuntAssetsPath
                                                .doctorHuntFont,
                                            color: greenTeal),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.sp),
                            Image.asset(DoctorHuntAssetsPath.diagnostic1),
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
                                        text: DoctorHuntText.dollar,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          color: blackText,
                                        ),
                                      ),
                                      TextSpan(
                                        text: DoctorHuntText.dollar2,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          color: royalIntrigue,
                                        ),
                                      ),
                                      TextSpan(
                                        text: DoctorHuntText.off,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          color: greenTeal,
                                        ),
                                      ),
                                      TextSpan(
                                        text: DoctorHuntText.cashback,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          color: royalIntrigue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.sp),
                              ElevatedButton(
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //   builder: (BuildContext context) =>
                                  //       const DiagnosticTest2Screen(),
                                  // ));
                                },
                                child: Text(
                                  DoctorHuntText.bookNow,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily:
                                          DoctorHuntAssetsPath.doctorHuntFont,
                                      color: whiteText),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(greenTeal),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.sp),
                                    ),
                                  ),
                                  fixedSize: MaterialStateProperty.all(
                                      Size(112.sp, 34.sp)),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}