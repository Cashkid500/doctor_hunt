import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/navigation/navigation.dart';
import 'package:doctor_hunt/screens/popular%20doctor/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularDoctorScreen extends StatefulWidget {
  const PopularDoctorScreen({super.key});

  @override
  State<PopularDoctorScreen> createState() => _PopularDoctorScreenState();
}

class _PopularDoctorScreenState extends State<PopularDoctorScreen> {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NavigationScreen()));
                        },
                        child: Container(
                          height: 30.sp,
                          width: 30.sp,
                          decoration: BoxDecoration(
                              color: whiteText,
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Icon(Icons.keyboard_arrow_left,
                              color: royalIntrigue),
                        ),
                      ),

                      //***************** Search Icon *****************
                      Icon(Icons.search, color: royalIntrigue),
                    ],
                  ),

                  SizedBox(height: 30.sp),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DoctorHuntText.popularDoctor,
                        style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: blackText),
                      ),
                      Text(
                        DoctorHuntText.see,
                        style: TextStyle(
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: royalIntrigue,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30.sp),

                  //***************** Scrollable View *****************
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        //***************** Doctor 1 *****************
                        DoctorsWidget(
                            imagePath: DoctorHuntAssetsPath.truluck,
                            doctorNamePath: DoctorHuntText.truluck,
                            specializationPath:
                                DoctorHuntText.medicineSpecialist),

                        SizedBox(width: 10.sp),

                        //***************** Doctor 2 *****************
                        DoctorsWidget(
                            imagePath: DoctorHuntAssetsPath.tranquilli2,
                            doctorNamePath: DoctorHuntText.tranquilli,
                            specializationPath:
                                DoctorHuntText.patheologySpecialist),

                        SizedBox(width: 10.sp),

                        //***************** Doctor 3 *****************
                        DoctorsWidget(
                            imagePath: DoctorHuntAssetsPath.truluck,
                            doctorNamePath: DoctorHuntText.truluck,
                            specializationPath:
                                DoctorHuntText.medicineSpecialist),
                      ],
                    ),
                  ),

                  SizedBox(height: 40.sp),

                  //***************** Text *****************
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      DoctorHuntText.category,
                      style: TextStyle(
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: blackText,
                      ),
                    ),
                  ),

                  SizedBox(height: 40.sp),

                  //***************** Dr Pediatrician *****************
                  Doctors(
                      doctorsImagePath: DoctorHuntAssetsPath.pediatrician,
                      namePath: DoctorHuntText.pediatrician,
                      isFavorite: isFavorite = true,
                      doctorSpecializationPath:
                          DoctorHuntText.cardiologistSpecialist,
                      digitPath: DoctorHuntText.twoPointFour,
                      viewsPath: DoctorHuntText.views1),

                  SizedBox(height: 20.sp),

                  //***************** Dr. Mistry *****************
                  Doctors(
                      doctorsImagePath: DoctorHuntAssetsPath.mistry,
                      namePath: DoctorHuntText.mistry,
                      isFavorite: isFavorite = false,
                      doctorSpecializationPath:
                          DoctorHuntText.dentistSpecialist,
                      digitPath: DoctorHuntText.twoPointEight,
                      viewsPath: DoctorHuntText.views2),

                  SizedBox(height: 20.sp),

                  //***************** Dr. Ether Wall *****************
                  Doctors(
                      doctorsImagePath: DoctorHuntAssetsPath.ether,
                      namePath: DoctorHuntText.ether,
                      isFavorite: isFavorite = true,
                      doctorSpecializationPath: DoctorHuntText.dentistCancer,
                      digitPath: DoctorHuntText.twoPointSeven,
                      viewsPath: DoctorHuntText.views3),

                  SizedBox(height: 20.sp),

                  //***************** Dr. Johan *****************
                  Doctors(
                      doctorsImagePath: DoctorHuntAssetsPath.johan,
                      namePath: DoctorHuntText.johan,
                      isFavorite: isFavorite = false,
                      doctorSpecializationPath:
                          DoctorHuntText.cardiologistSpecialist,
                      digitPath: DoctorHuntText.twoPointFour,
                      viewsPath: DoctorHuntText.views4),

                  SizedBox(height: 10.sp),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


