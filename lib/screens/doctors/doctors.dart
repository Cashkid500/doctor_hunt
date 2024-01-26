import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/my%20doctors/my_doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
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
                    RowWidget(rowText: DoctorHuntText.doctors),

                    SizedBox(height: 30.sp),

                    // Search Box
                    SearchField(searchPath: DoctorHuntText.search3),

                    SizedBox(height: 30.sp,),

                    // Tab Bar View
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // First Tab
                          Container(
                            height: 36.sp,
                            width: 51.sp,
                            decoration: BoxDecoration(
                              color: greenTeal,
                              borderRadius: BorderRadius.circular(6.sp),
                            ),
                            child: Center(
                              child: Text(
                                DoctorHuntText.all,
                                style: TextStyle(
                                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: whiteText,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5.sp),
                    
                          // Second Tab
                          Container(
                            height: 36.sp,
                            width: 76.sp,
                            decoration: BoxDecoration(
                              color: deathVictorious,
                              borderRadius: BorderRadius.circular(6.sp),
                            ),
                            child: Center(
                              child: Text(
                                DoctorHuntText.dentist2,
                                style: TextStyle(
                                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                  color: greenTeal,
                                ),
                              ),
                            ),
                          ),
                    
                          SizedBox(width: 5.sp),
                    
                          // Third Tab
                          Container(
                            height: 36.sp,
                            width: 97.sp,
                            decoration: BoxDecoration(
                              color: deathVictorious,
                              borderRadius: BorderRadius.circular(6.sp),
                            ),
                            child: Center(
                              child: Text(
                                DoctorHuntText.cardiology2,
                                style: TextStyle(
                                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                  color: greenTeal,
                                ),
                              ),
                            ),
                          ),
                    
                           SizedBox(width: 5.sp),
                    
                          // Fourth Tab
                          Container(
                            height: 36.sp,
                            width: 124.sp,
                            decoration: BoxDecoration(
                              color: deathVictorious,
                              borderRadius: BorderRadius.circular(6.sp),
                            ),
                            child: Center(
                              child: Text(
                                DoctorHuntText.physioTheraphy,
                                style: TextStyle(
                                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                  color: greenTeal,
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                    SizedBox(height: 20.sp),
                    DoctorsScreenWidget(imagePath: DoctorHuntAssetsPath.pediatrician, namePath: DoctorHuntText.pediatrician, isFavorite: isFavorite = true, specializationPath: DoctorHuntText.cardiologistSpecialist),

                    // Second Container
                    SizedBox(height: 20.sp),
                    DoctorsScreenWidget(imagePath: DoctorHuntAssetsPath.mistry, namePath: DoctorHuntText.mistry, isFavorite: isFavorite = true, specializationPath: DoctorHuntText.dentistSpecialist),

                    // Third Container
                    SizedBox(height: 20.sp),
                    DoctorsScreenWidget(imagePath: DoctorHuntAssetsPath.ether, namePath: DoctorHuntText.ether, isFavorite: isFavorite = true, specializationPath: DoctorHuntText.dentistCancer),

                    // Fourth Container
                    SizedBox(height: 20.sp),
                    DoctorsScreenWidget(imagePath: DoctorHuntAssetsPath.johan, namePath: DoctorHuntText.johan, isFavorite: isFavorite = true, specializationPath: DoctorHuntText.cardiologistSpecialist),

                    // Fifth Container
                    SizedBox(height: 20.sp),
                    DoctorsScreenWidget(imagePath: DoctorHuntAssetsPath.johan, namePath: DoctorHuntText.johan, isFavorite: isFavorite = true, specializationPath: DoctorHuntText.cardiologistSpecialist),

                    SizedBox(height: 20.sp),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class DoctorsScreenWidget extends StatelessWidget {
  const DoctorsScreenWidget({
    super.key,
    required this.imagePath,
    required this.namePath,
    required this.isFavorite,
    required this.specializationPath,
  });

  final String imagePath;
  final String namePath;
  final bool isFavorite;
  final String specializationPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.sp),
        border: Border.all(
            width: 1.sp,
            color: whiteText,
            style: BorderStyle.solid),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.sp,
          right: 10.sp,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset(imagePath),
          SizedBox(width: 10.sp),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 10.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 180.sp,
                      child: Text(
                        namePath,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily:
                              DoctorHuntAssetsPath.doctorHuntFont,
                          color: blackText,
                        ),
                      ),
                    ),
                    Icon(
                      !isFavorite
                          ? Icons.favorite_border_sharp
                          : Icons.favorite,
                      color:
                          !isFavorite ? Colors.grey : Colors.red,
                      size: 20.sp,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                specializationPath,
                style: TextStyle(
                    fontFamily:
                        DoctorHuntAssetsPath.doctorHuntFont,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: royalIntrigue),
              ),
              SizedBox(height: 10.sp),
              Row(
                children: [
                Image.asset(DoctorHuntAssetsPath.rating),
                SizedBox(width: 30.sp),
                RichText(
                  text: TextSpan(
                    children: [
                    TextSpan(
                      text: DoctorHuntText.twoPointEight,
                      style: TextStyle(
                        fontFamily:
                            DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: blackText,
                      ),
                    ),
                    TextSpan(
                      text: DoctorHuntText.views,
                      style: TextStyle(
                        fontFamily:
                            DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: royalIntrigue,
                      ),
                    ),
                  ]),
                ),
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
