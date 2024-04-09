import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/favourite%20doctor/widget.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/my%20doctors/widget.dart';
import 'package:doctor_hunt/screens/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteDoctorsScreen extends StatefulWidget {
  const FavouriteDoctorsScreen({super.key});

  @override
  State<FavouriteDoctorsScreen> createState() => _FavouriteDoctorsScreenState();
}

class _FavouriteDoctorsScreenState extends State<FavouriteDoctorsScreen> {
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
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 10.sp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //***************** Back Arrow *****************
                    RowWidget(
                      rowText: DoctorHuntText.favouriteDoctors,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const NavigationScreen(),
                        ));
                      },
                    ),

                    SizedBox(height: 30.sp),

                    //***************** Search Box *****************
                    SearchField(searchPath: DoctorHuntText.dentist2),

                    SizedBox(
                      height: 30.sp,
                    ),

                    //***************** First Row *****************
                    Row(children: [
                      //***************** First Row First Container *****************
                      FirstContainer(
                          isFavorite: isFavorite = false,
                          imagePath: DoctorHuntAssetsPath.shouey,
                          namePath: DoctorHuntText.shouey,
                          specializationPath:
                              DoctorHuntText.cardiologySpecialist),

                      SizedBox(width: 10.sp),

                      //***************** First Row Second Container *****************
                      Expanded(
                        child: FirstContainer(
                            isFavorite: isFavorite = true,
                            imagePath: DoctorHuntAssetsPath.christenfeld,
                            namePath: DoctorHuntText.christenfeld,
                            specializationPath: DoctorHuntText.dentistCancer),
                      ),
                    ]),

                    SizedBox(height: 20.sp),

                    //***************** Second Row *****************
                    Row(children: [
                      //***************** First Row First Container *****************
                      FirstContainer(
                          isFavorite: isFavorite,
                          imagePath: DoctorHuntAssetsPath.shouey,
                          namePath: DoctorHuntText.shouey,
                          specializationPath: DoctorHuntText.dentistMedicine),

                      SizedBox(width: 10.sp),

                      //***************** First Row Second Container *****************
                      Expanded(
                        child: FirstContainer(
                            isFavorite: isFavorite = false,
                            imagePath: DoctorHuntAssetsPath.dentist,
                            namePath: DoctorHuntText.shouey,
                            specializationPath:
                                DoctorHuntText.dentistSpecialist),
                      ),
                    ]),

                    SizedBox(height: 40.sp),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DoctorHuntText.featureDoctor,
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
                        ]),

                    SizedBox(
                      height: 30.sp,
                    ),

                    //***************** Last Row *****************
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        LastRowContainer(
                            isFavorite: isFavorite,
                            starTextPath: DoctorHuntText.threePointSeven,
                            doctorsNamePath: DoctorHuntText.crick,
                            hourPath: DoctorHuntText.twentyFiveHours,
                            doctorImagePath: DoctorHuntAssetsPath.shouey),

                        SizedBox(
                          width: 5.sp,
                        ),

                        //***************** Second Container *****************
                        LastRowContainer(
                            isFavorite: isFavorite = true,
                            starTextPath: DoctorHuntText.threePointZero,
                            doctorsNamePath: DoctorHuntText.strain,
                            hourPath: DoctorHuntText.twentyTwoHours,
                            doctorImagePath: DoctorHuntAssetsPath.strain),

                        SizedBox(
                          width: 5.sp,
                        ),

                        //***************** Third Container *****************
                        LastRowContainer(
                            isFavorite: isFavorite = false,
                            starTextPath: DoctorHuntText.twoPointNine,
                            doctorsNamePath: DoctorHuntText.lachinet,
                            hourPath: DoctorHuntText.twentyNineHours,
                            doctorImagePath: DoctorHuntAssetsPath.lachinet),

                        SizedBox(
                          width: 5.sp,
                        ),

                        //***************** Fourth Container *****************
                        LastRowContainer(
                            isFavorite: isFavorite = true,
                            starTextPath: DoctorHuntText.threePointZero,
                            doctorsNamePath: DoctorHuntText.crick,
                            hourPath: DoctorHuntText.twentyFiveHours,
                            doctorImagePath: DoctorHuntAssetsPath.shouey),
                      ]),
                    ),

                    SizedBox(
                      height: 5.sp,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

