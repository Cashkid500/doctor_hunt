import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/doctor%20details/doctor_details.dart';
import 'package:doctor_hunt/screens/doctors/widget.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/my%20doctors/widget.dart';
import 'package:doctor_hunt/screens/patient%20details/patient_details2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({
    super.key,
  });

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  bool isFavorite = false;
  int currentTab = 0;

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
                    //***************** Back Arrow ****************
                    RowWidget(
                      rowText: DoctorHuntText.doctors,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const PatientDetails2Screen(),
                        ));
                      },
                    ),

                    SizedBox(height: 30.sp),

                    //***************** Search Box ****************
                    SearchField(searchPath: DoctorHuntText.search3),

                    SizedBox(
                      height: 30.sp,
                    ),

                    //***************** Tab Bar View *****************
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(
                            4,
                            (index) => Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentTab = index;
                                    });
                                  },
                                  child: Container(
                                    height: 36.sp,
                                    width: index == 3
                                        ? 124.sp
                                        : index == 0
                                            ? 51.sp
                                            : index == 1
                                                ? 76.sp
                                                : 97.sp,
                                    decoration: BoxDecoration(
                                      color: currentTab == index
                                          ? greenTeal
                                          : deathVictorious,
                                      borderRadius: BorderRadius.circular(6.sp),
                                    ),
                                    child: Center(
                                      child: Text(
                                        index == 0
                                            ? DoctorHuntText.all
                                            : (index == 1)
                                                ? DoctorHuntText.dentist2
                                                : (index == 2)
                                                    ? DoctorHuntText.cardiology2
                                                    : DoctorHuntText
                                                        .physioTheraphy,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 14.sp,
                                          fontWeight: currentTab == index
                                              ? FontWeight.w700
                                              : FontWeight.w300,
                                          color: currentTab == index
                                              ? whiteText
                                              : greenTeal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (index != 3) SizedBox(width: 5.sp),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.sp),

                    //***************** Dr Pediatrician *****************
                    DoctorsScreenWidget(
                      imagePath: DoctorHuntAssetsPath.pediatrician,
                      namePath: DoctorHuntText.pediatrician,
                      isFavorite: isFavorite = true,
                      specializationPath: DoctorHuntText.cardiologistSpecialist,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DoctorDetailsScreen(),
                        ));
                      },
                    ),

                    //***************** Dr Mistry Brick *****************
                    SizedBox(height: 20.sp),
                    DoctorsScreenWidget(
                        imagePath: DoctorHuntAssetsPath.mistry,
                        namePath: DoctorHuntText.mistry,
                        isFavorite: isFavorite = true,
                        specializationPath: DoctorHuntText.dentistSpecialist),

                    //***************** Dr Ether Wall *****************
                    SizedBox(height: 20.sp),
                    DoctorsScreenWidget(
                        imagePath: DoctorHuntAssetsPath.ether,
                        namePath: DoctorHuntText.ether,
                        isFavorite: isFavorite = true,
                        specializationPath: DoctorHuntText.dentistCancer),

                    //***************** Dr Johan Smith *****************
                    SizedBox(height: 20.sp),
                    DoctorsScreenWidget(
                        imagePath: DoctorHuntAssetsPath.johan,
                        namePath: DoctorHuntText.johan,
                        isFavorite: isFavorite = true,
                        specializationPath:
                            DoctorHuntText.cardiologistSpecialist),

                    //***************** Dr Johan Smith *****************
                    SizedBox(height: 20.sp),
                    DoctorsScreenWidget(
                        imagePath: DoctorHuntAssetsPath.johan,
                        namePath: DoctorHuntText.johan,
                        isFavorite: isFavorite = true,
                        specializationPath:
                            DoctorHuntText.cardiologistSpecialist),

                    SizedBox(height: 20.sp),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

