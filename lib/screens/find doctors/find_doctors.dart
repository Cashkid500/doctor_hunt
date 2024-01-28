import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/my%20doctors/my_doctors.dart';
import 'package:doctor_hunt/screens/select%20time/select_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindDoctorsScreen extends StatefulWidget {
  const FindDoctorsScreen({super.key});

  @override
  State<FindDoctorsScreen> createState() => _FindDoctorsScreenState();
}

class _FindDoctorsScreenState extends State<FindDoctorsScreen> {
  bool isFavorite = false;
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
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Back Arrow
                    RowWidget(rowText: DoctorHuntText.findDoctors),

                    SizedBox(height: 30.sp),

                    // Search Box
                    SearchField(searchPath: DoctorHuntText.dentist2),

                    SizedBox(
                      height: 30.sp,
                    ),

                    // First Container
                    DoctorWidget(
                      imagePath: DoctorHuntAssetsPath.tranquilli,
                      namePath: DoctorHuntText.shruti,
                      specializationPath: DoctorHuntText.toothDentist,
                      experiencePath: DoctorHuntText.sevenYears,
                      percentagePath: DoctorHuntText.eightySeven,
                      patientPath: DoctorHuntText.sixtyNinePatients,
                      isFavorite: isFavorite = true,
                      timePath: DoctorHuntText.ten,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SelectTimeScreen()));
                      },
                    ),
                    SizedBox(height: 20.sp),

                    // Second Container
                    DoctorWidget(
                        imagePath: DoctorHuntAssetsPath.boneBrake,
                        namePath: DoctorHuntText.watamaniuk,
                        specializationPath: DoctorHuntText.toothDentist,
                        experiencePath: DoctorHuntText.nineYears,
                        percentagePath: DoctorHuntText.seventyFour,
                        patientPath: DoctorHuntText.seventyEightPatients,
                        isFavorite: isFavorite = false,
                        timePath: DoctorHuntText.twelve),
                    SizedBox(
                      height: 20.sp,
                    ),

                    // Third Container
                    DoctorWidget(
                        imagePath: DoctorHuntAssetsPath.luke,
                        namePath: DoctorHuntText.crownover,
                        specializationPath: DoctorHuntText.toothDentist,
                        experiencePath: DoctorHuntText.fiveYears,
                        percentagePath: DoctorHuntText.fiftyNine,
                        patientPath: DoctorHuntText.eightySixPatients,
                        isFavorite: isFavorite = true,
                        timePath: DoctorHuntText.eleven),
                    SizedBox(
                      height: 20.sp,
                    ),

                    // Fourth Container
                    DoctorWidget(
                        imagePath: DoctorHuntAssetsPath.shoemaker,
                        namePath: DoctorHuntText.balestra,
                        specializationPath: DoctorHuntText.toothDentist,
                        experiencePath: DoctorHuntText.sixYears,
                        percentagePath: DoctorHuntText.eightySeven,
                        patientPath: DoctorHuntText.sixtyNinePatients,
                        isFavorite: isFavorite = false,
                        timePath: DoctorHuntText.ten),
                    SizedBox(height: 20.sp),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
