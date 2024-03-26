import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/doctor%20appointment/doctor_appointment2.dart';
import 'package:doctor_hunt/screens/doctor%20appointment/widget.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/signup/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorAppointmentScreen extends StatefulWidget {
  const DoctorAppointmentScreen({super.key});

  @override
  State<DoctorAppointmentScreen> createState() =>
      _DoctorAppointmentScreenState();
}

class _DoctorAppointmentScreenState extends State<DoctorAppointmentScreen> {
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
                    //****** Back Arrow *********
                    RowWidget(rowText: DoctorHuntText.appointment),

                    SizedBox(height: 30.sp),

                    //*********** Container ***********
                    AppointmentDetails(isFavorite: isFavorite = true),

                    SizedBox(height: 30.sp),

                    //************ Appointment For *********
                    Row(
                      children: [
                        Text(
                          DoctorHuntText.appointmentFor,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: blackText,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.sp),

                    //************** Patient Name TextField ****************
                    TextFieldWidget(hintTextPath: DoctorHuntText.patientName2),
                    SizedBox(height: 20.sp),

                    //************** Contact Number TextField ****************
                    TextFieldWidget(hintTextPath: DoctorHuntText.contactNumber),
                    SizedBox(height: 20.sp),

                    TextRow(rowTextPath: DoctorHuntText.who),

                    SizedBox(height: 20.sp),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                        //********* First Container **********
                        Container(
                          height: 145.sp,
                          width: 100.sp,
                          decoration: BoxDecoration(
                            color: deathVictorious,
                            borderRadius: BorderRadius.circular(6.sp),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add, color: greenTeal, size: 40.sp),
                              SizedBox(height: 5.sp),
                              Center(
                                child: Text(
                                  DoctorHuntText.add,
                                  style: TextStyle(
                                      color: greenTeal,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 5.sp),

                        //********** Second Container *************
                        RowContainerWidget(
                            imagePath: DoctorHuntAssetsPath.guy,
                            textPath: DoctorHuntText.mySelf),

                        SizedBox(width: 5.sp),

                        //********** Third Container ************
                        RowContainerWidget(
                            imagePath: DoctorHuntAssetsPath.child,
                            textPath: DoctorHuntText.myChild),

                        SizedBox(width: 5.sp),

                        //************ Fourth Container ***********
                        RowContainerWidget(
                            imagePath: DoctorHuntAssetsPath.child,
                            textPath: DoctorHuntText.myWife),
                      ]),
                    ),

                    SizedBox(
                      height: 40.sp,
                    ),

                    //************* Next *************
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const DoctorAppointment2Screen(),
                          ),
                        );
                      },
                      child: Text(
                        DoctorHuntText.next,
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
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

