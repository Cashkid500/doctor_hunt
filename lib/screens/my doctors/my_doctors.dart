import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/find%20doctors/find_doctors.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/my%20doctors/widget.dart';
import 'package:doctor_hunt/screens/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDoctorsScreen extends StatefulWidget {
  const MyDoctorsScreen({super.key});

  @override
  State<MyDoctorsScreen> createState() => _MyDoctorsScreenState();
}

class _MyDoctorsScreenState extends State<MyDoctorsScreen> {
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
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 10.sp),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //***************** Back Arrow *****************
                  RowWidget(rowText: DoctorHuntText.myDoctors,
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const NavigationScreen(),
                        ));
                      },
                  ),

                  SizedBox(height: 30.sp),

                  //***************** Search Box *****************
                  SearchField(searchPath: DoctorHuntText.search3),

                  SizedBox(
                    height: 30.sp,
                  ),

                  //***************** Dr. Tranquilli *****************
                  DoctorWidget(
                    imagePath: DoctorHuntAssetsPath.tranquilli,
                    namePath: DoctorHuntText.tranquilli,
                    specializationPath: DoctorHuntText.medicine,
                    experiencePath: DoctorHuntText.sixYears,
                    percentagePath: DoctorHuntText.eightySeven,
                    patientPath: DoctorHuntText.sixtyNinePatients,
                    isFavorite: isFavorite = false,
                    timePath: DoctorHuntText.ten,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              FindDoctorsScreen(),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 20.sp),

                  //***************** Dr. Bonebrake *****************
                  DoctorWidget(
                    imagePath: DoctorHuntAssetsPath.boneBrake,
                    namePath: DoctorHuntText.boneBrake,
                    specializationPath: DoctorHuntText.dentist,
                    experiencePath: DoctorHuntText.eightYears,
                    percentagePath: DoctorHuntText.fiftyNine,
                    patientPath: DoctorHuntText.eightyTwoPatients,
                    isFavorite: isFavorite = true,
                    timePath: DoctorHuntText.twelve,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => FindDoctorsScreen(),
                        ),
                      );
                    },
                  ),

                  SizedBox(
                    height: 20.sp,
                  ),

                  //***************** Dr Luke Whitesell *****************
                  DoctorWidget(
                      imagePath: DoctorHuntAssetsPath.luke,
                      namePath: DoctorHuntText.luke,
                      specializationPath: DoctorHuntText.cardiology,
                      experiencePath: DoctorHuntText.sevenYears,
                      percentagePath: DoctorHuntText.fiftySeven,
                      patientPath: DoctorHuntText.seventySixPatients,
                      isFavorite: isFavorite = false,
                      timePath: DoctorHuntText.eleven,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const FindDoctorsScreen(),
                          ),
                        );
                      }),

                  SizedBox(
                    height: 20.sp,
                  ),

                  //***************** Dr Shoemaker *****************
                  DoctorWidget(
                      imagePath: DoctorHuntAssetsPath.shoemaker,
                      namePath: DoctorHuntText.shoemaker,
                      specializationPath: DoctorHuntText.patheology,
                      experiencePath: DoctorHuntText.fiveYears,
                      percentagePath: DoctorHuntText.eightySeven,
                      patientPath: DoctorHuntText.sixtyNinePatients,
                      isFavorite: isFavorite = true,
                      timePath: DoctorHuntText.ten,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const FindDoctorsScreen(),
                          ),
                        );
                      }),

                  SizedBox(height: 20.sp),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


