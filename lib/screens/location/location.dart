import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/medicine%20order/medicine_order2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
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
                    RowWidget(rowText: DoctorHuntText.enableLocation),

                    SizedBox(height: 80.sp),

                    // Circular Box
                    Container(
                      height: 214.sp,
                      width: 214.sp,
                      decoration: BoxDecoration(
                        color: deathVictorious,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Image.asset(DoctorHuntAssetsPath.location),
                    ),

                    SizedBox(height: 30.sp),

                    // Text
                    Text(
                      DoctorHuntText.location,
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: blackText),
                    ),

                    SizedBox(height: 20.sp),

                    // Text
                    SizedBox(
                      width: 310.sp,
                      child: Text(
                        DoctorHuntText.yourLocation,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            height: 2.0.sp,
                            color: royalIntrigue),
                      ),
                    ),
                    SizedBox(height: 40.sp),

                    // Button
                    ElevatedButtonWidget(
                      textPath: DoctorHuntText.enable,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MedicineOrdersScreen(),
                        ));
                      },
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
