import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/doctors/doctors.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/patient%20details/patient_details.dart';
import 'package:doctor_hunt/screens/patient%20details/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientDetails2Screen extends StatefulWidget {
  const PatientDetails2Screen({super.key});

  @override
  State<PatientDetails2Screen> createState() => _PatientDetails2ScreenState();
}

class _PatientDetails2ScreenState extends State<PatientDetails2Screen> {
  String selectedGender = DoctorHuntText.male;
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
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //***************** Back Arrow *****************
                  RowWidget(rowText: DoctorHuntText.patientDetails,
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const PatientDetailsScreen(),
                        ));
                      },
                  ),

                  SizedBox(height: 30.sp),

                  //***************** Box *****************
                  Container(
                    height: 38.sp,
                    width: 335.sp,
                    decoration: BoxDecoration(
                        color: whiteText,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                      child: Row(
                        children: [
                          Text(
                            DoctorHuntText.step,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: blackText,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            ),
                          ),
                          SizedBox(width: 10.sp),
                          Container(
                            width: 234.0,
                            height: 7.0,
                            decoration: BoxDecoration(
                              color: deathVictorious,
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(color: whiteText),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100.sp,
                                  height: 7.sp,
                                  decoration: BoxDecoration(
                                    color: greenTeal,
                                    borderRadius: BorderRadius.circular(16.r),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20.sp),

                  //***************** User Data *****************
                  Container(
                    height: 518.sp,
                    width: 335.sp,
                    decoration: BoxDecoration(
                      color: whiteText,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.sp, right: 8.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.sp),

                          //***************** Patient Name *****************
                          Heading(headerPath: DoctorHuntText.patientName),
                          SizedBox(height: 15.sp),

                          FieldWidget(fieldPath: DoctorHuntText.fullName),
                          SizedBox(height: 15.sp),

                          //***************** Age *****************
                          Heading(headerPath: DoctorHuntText.age),
                          SizedBox(height: 15.sp),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //***************** Day *****************
                              Container(
                                height: 54.sp,
                                width: 94.sp,
                                decoration: BoxDecoration(
                                  color: whiteText,
                                  borderRadius: BorderRadius.circular(6.r),
                                  border: Border.all(
                                      color: royalIntrigue,
                                      style: BorderStyle.solid,
                                      width: 0.5.sp),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 5.sp, right: 5.sp),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        DoctorHuntText.days,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          color: royalIntrigue,
                                        ),
                                      ),
                                      Icon(
                                        Icons.expand_more,
                                        color: royalIntrigue,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(width: 10.sp),

                              //***************** Month *****************
                              Container(
                                height: 54.sp,
                                width: 94.sp,
                                decoration: BoxDecoration(
                                  color: whiteText,
                                  borderRadius: BorderRadius.circular(6.r),
                                  border: Border.all(
                                    color: royalIntrigue,
                                    style: BorderStyle.solid,
                                    width: 0.5.sp,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 5.sp, right: 5.sp),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        DoctorHuntText.months,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          color: royalIntrigue,
                                        ),
                                      ),
                                      Icon(
                                        Icons.expand_more,
                                        color: royalIntrigue,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(width: 10.sp),

                              //***************** Year *****************
                              Container(
                                height: 54.sp,
                                width: 94.sp,
                                decoration: BoxDecoration(
                                  color: whiteText,
                                  borderRadius: BorderRadius.circular(6.r),
                                  border: Border.all(
                                      color: royalIntrigue,
                                      style: BorderStyle.solid,
                                      width: 0.5.sp),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 5.sp, right: 5.sp),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        DoctorHuntText.year,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          color: royalIntrigue,
                                        ),
                                      ),
                                      Icon(
                                        Icons.expand_more,
                                        color: royalIntrigue,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 15.sp),

                          //***************** Gender *****************
                          Heading(headerPath: DoctorHuntText.gender),

                          SizedBox(height: 15.sp),

                          //***************** Radio Button *****************
                          Row(
                            children: [
                              Radio(
                                value: DoctorHuntText.male,
                                activeColor: greenTeal,
                                groupValue: selectedGender,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      selectedGender = value.toString();
                                    },
                                  );
                                },
                              ),
                              Text(
                                DoctorHuntText.male,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w300,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                  color: royalIntrigue,
                                ),
                              ),
                              Radio(
                                value: DoctorHuntText.female,
                                activeColor: greenTeal,
                                groupValue: selectedGender,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      selectedGender = value.toString();
                                    },
                                  );
                                },
                              ),
                              Text(
                                DoctorHuntText.female,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w300,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                  color: royalIntrigue,
                                ),
                              ),
                              Radio(
                                value: DoctorHuntText.others,
                                activeColor: greenTeal,
                                groupValue: selectedGender,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      selectedGender = value.toString();
                                    },
                                  );
                                },
                              ),
                              Text(
                                DoctorHuntText.others,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w300,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                  color: royalIntrigue,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 15.sp),

                          //***************** Mobile Number *****************
                          Heading(headerPath: DoctorHuntText.mobileNumber),
                          SizedBox(height: 15.sp),

                          FieldWidget(fieldPath: DoctorHuntText.digit),
                          SizedBox(height: 15.sp),

                          //***************** Email *****************
                          Heading(headerPath: DoctorHuntText.email),
                          SizedBox(height: 15.sp),

                          FieldWidget(fieldPath: DoctorHuntText.emailAddress),
                        ],
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 25.sp),

                  //***************** Button *****************
                  ElevatedButtonWidget(
                    textPath: DoctorHuntText.continue1,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const DoctorsScreen(),
                      ));
                    },
                  ),
                  SizedBox(height: 2.sp),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

