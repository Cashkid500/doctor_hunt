import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicalRecordScreen extends StatefulWidget {
  const MedicalRecordScreen({super.key});

  @override
  State<MedicalRecordScreen> createState() => _MedicalRecordScreenState();
}

class _MedicalRecordScreenState extends State<MedicalRecordScreen> {
  // String textPath = "Add a record";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
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
                    Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          // Back Arrow
                          Container(
                            height: 30.sp,
                            width: 30.sp,
                            decoration: BoxDecoration(
                                color: whiteText,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Icon(Icons.keyboard_arrow_left,
                                color: royalIntrigue),
                          ),

                          SizedBox(width: 20.sp),

                          // Text
                          Text(
                            DoctorHuntText.medicalRecord,
                            style: TextStyle(
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                color: blackText),
                          ),
                        ]
                      ),

                    SizedBox(height: 80.sp),

                    // Circular Box
                    Container(
                      height: 214.sp,
                      width: 214.sp,
                      decoration: BoxDecoration(
                        color: deathVictorious,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Image.asset(DoctorHuntAssetsPath.writingMaterials),
                    ),

                    SizedBox(height: 30.sp),

                    // Text
                    Text(
                      DoctorHuntText.addMedicalRecord,
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: blackText),
                    ),

                    SizedBox(height: 20.sp),

                    // Text
                    SizedBox(
                      width: 330.sp,
                      child: Text(
                        DoctorHuntText.healthHistory,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: royalIntrigue),
                      ),
                    ),
                    SizedBox(height: 30.sp),

                    // Button
                    ElevatedButtonWidget(textPath: DoctorHuntText.addRecord),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.textPath,
  });

  final String textPath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop(());
      },
      child: Text(
        textPath,
        style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            color: whiteText),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(greenTeal),
        shape:
            MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.sp),
          ),
        ),
        fixedSize:
            MaterialStateProperty.all(Size(270.sp, 54.sp)),
      ),
    );
  }
}
