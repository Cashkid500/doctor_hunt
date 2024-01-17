import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiagnosticTestScreen extends StatefulWidget {
  const DiagnosticTestScreen({super.key});

  @override
  State<DiagnosticTestScreen> createState() => _DiagnosticTestScreenState();
}

class _DiagnosticTestScreenState extends State<DiagnosticTestScreen> {
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
                    RowWidget(rowText: DoctorHuntText.diagnosticTests),

                    SizedBox(height: 80.sp),

                    // Circular Box
                    Container(
                      height: 214.sp,
                      width: 214.sp,
                      decoration: BoxDecoration(
                        color: deathVictorious,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Image.asset(DoctorHuntAssetsPath.diagnostic),
                    ),

                    SizedBox(height: 30.sp),

                    // Text
                    Text(
                      DoctorHuntText.noBooking,
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: blackText),
                    ),

                    SizedBox(height: 20.sp),

                    // Text
                    SizedBox(
                      width: 280.sp,
                      child: Text(
                        DoctorHuntText.checkup,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: royalIntrigue),
                      ),
                    ),
                    SizedBox(height: 30.sp),

                    // Button
                    ElevatedButtonWidget(
                      textPath: DoctorHuntText.bookNow,
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (BuildContext context) =>
                        //       const AddRecordScreen(),
                        // ));
                      },
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
