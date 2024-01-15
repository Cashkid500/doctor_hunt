import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddRecordScreen extends StatefulWidget {
  const AddRecordScreen({super.key});

  @override
  State<AddRecordScreen> createState() => _AddRecordScreenState();
}

class _AddRecordScreenState extends State<AddRecordScreen> {
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
                whiteText, // Bottom
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Back Arrow
                    RowWidget(rowText: "Add Records"),

                    SizedBox(height: 30.sp),

                    // Row
                    Row(children: [
                      Container(
                        height: 125.sp,
                        width: 100.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Image.asset("assets/images/Guy.png"),
                      ),
                      SizedBox(width: 10.sp),
                      Container(
                        height: 125.sp,
                        width: 100.sp,
                        decoration: BoxDecoration(
                          // color: Color(0xff0EBE7F),
                          color: whiteText,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: greenTeal, size: 40.sp),
                            SizedBox(height: 5.sp),
                            Center(
                              child: SizedBox(
                                width: 72.sp,
                                child: Text(
                                "Add more images",
                                    style: TextStyle(
                                        color: greenTeal,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                  ),

                  SizedBox(height: 80.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Record for",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: blackText),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Abdullah Mamun",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: greenTeal),
                    ),
                    Icon(Icons.edit, color: royalIntrigue, size: 20.sp),
                    ]
                  ),
                  ]
                ),
            ),
          ),
        ),
      ),
    );
  }
}
