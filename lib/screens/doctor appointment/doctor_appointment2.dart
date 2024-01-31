import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/doctor%20appointment/doctor_appointment.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class DoctorAppointment2Screen extends StatefulWidget {
  const DoctorAppointment2Screen({super.key});

  @override
  State<DoctorAppointment2Screen> createState() =>
      _DoctorAppointment2ScreenState();
}

class _DoctorAppointment2ScreenState extends State<DoctorAppointment2Screen> {
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
            padding: EdgeInsets.only(top: 10.sp),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Back Arrow
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp),
                      child: RowWidget(rowText: DoctorHuntText.appointment),
                    ),

                    SizedBox(height: 30.sp),

                    // Calender
                    Center(
                      child: Container(
                        width: 330.sp,
                        decoration: BoxDecoration(
                          color: whiteText,
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        ),
                        child: Column(
                          children: [
                            TableCalendar(
                              headerVisible: true,
                              headerStyle: HeaderStyle(
                                formatButtonVisible: false,
                                titleCentered: true,
                                titleTextStyle: TextStyle(
                                    color: whiteText,
                                    fontFamily:
                                        DoctorHuntAssetsPath.doctorHuntFont,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.r),
                                      topRight: Radius.circular(20.r)),
                                  color: greenTeal,
                                ),
                              ),
                              daysOfWeekVisible: true,
                              pageAnimationEnabled: true,
                              firstDay: DateTime.utc(2010, 10, 16),
                              lastDay: DateTime.utc(2030, 3, 14),
                              focusedDay: DateTime.now(),
                              calendarStyle: CalendarStyle(
                                todayDecoration: BoxDecoration(
                                  color: greenTeal,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 30.sp),

                    Container(
                      height: 390.sp,
                      width: 375.sp,
                      decoration: BoxDecoration(
                        color: whiteText,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              45.sp,
                            ),
                            topRight: Radius.circular(45.sp)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 15.sp,
                          top: 30.sp,
                        ),
                        child: Column(children: [
                          TextRow(rowTextPath: DoctorHuntText.availableTime),
                          SizedBox(height: 20.sp),

                          // Available Time Row
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // First Container
                                Container(
                                  height: 60.sp,
                                  width: 60.sp,
                                  decoration: BoxDecoration(
                                    color: deathVictorious,
                                    borderRadius: BorderRadius.circular(40.sp),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 35.sp,
                                      child: Text(
                                        DoctorHuntText.tenAM,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: greenTeal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Second Container
                                Container(
                                  height: 60.sp,
                                  width: 60.sp,
                                  decoration: BoxDecoration(
                                    color: deathVictorious,
                                    borderRadius: BorderRadius.circular(40.sp),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 35.sp,
                                      child: Text(
                                        DoctorHuntText.twelveAM,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: greenTeal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Third Container
                                Container(
                                  height: 60.sp,
                                  width: 60.sp,
                                  decoration: BoxDecoration(
                                    color: greenTeal,
                                    borderRadius: BorderRadius.circular(40.sp),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 35.sp,
                                      child: Text(
                                        DoctorHuntText.twoPM,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: whiteText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Fourth Container
                                Container(
                                  height: 60.sp,
                                  width: 60.sp,
                                  decoration: BoxDecoration(
                                    color: deathVictorious,
                                    borderRadius: BorderRadius.circular(40.sp),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 35.sp,
                                      child: Text(
                                        DoctorHuntText.threePM,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: greenTeal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Fifth Container
                                Container(
                                  height: 60.sp,
                                  width: 60.sp,
                                  decoration: BoxDecoration(
                                    color: deathVictorious,
                                    borderRadius: BorderRadius.circular(40.sp),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 35.sp,
                                      child: Text(
                                        DoctorHuntText.fourPM,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: greenTeal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),

                          SizedBox(height: 30.sp),
                          // Text
                          TextRow(rowTextPath: DoctorHuntText.reminder),
                          SizedBox(height: 20.sp),

                          // Reminder Me Before Row
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // First Container
                                Container(
                                  height: 60.sp,
                                  width: 60.sp,
                                  decoration: BoxDecoration(
                                    color: deathVictorious,
                                    borderRadius: BorderRadius.circular(40.sp),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 35.sp,
                                      child: Text(
                                        DoctorHuntText.thirtyMins,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: greenTeal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Second Container
                                Container(
                                  height: 60.sp,
                                  width: 60.sp,
                                  decoration: BoxDecoration(
                                    color: deathVictorious,
                                    borderRadius: BorderRadius.circular(40.sp),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 35.sp,
                                      child: Text(
                                        DoctorHuntText.fortyMins,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: greenTeal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Third Container
                                Container(
                                  height: 60.sp,
                                  width: 60.sp,
                                  decoration: BoxDecoration(
                                    color: greenTeal,
                                    borderRadius: BorderRadius.circular(40.sp),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 35.sp,
                                      child: Text(
                                        DoctorHuntText.twentyFiveMins,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: whiteText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Fourth Container
                                Container(
                                  height: 60.sp,
                                  width: 60.sp,
                                  decoration: BoxDecoration(
                                    color: deathVictorious,
                                    borderRadius: BorderRadius.circular(40.sp),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 35.sp,
                                      child: Text(
                                        DoctorHuntText.tenMins,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: greenTeal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // Fifth Container
                                Container(
                                  height: 60.sp,
                                  width: 60.sp,
                                  decoration: BoxDecoration(
                                    color: deathVictorious,
                                    borderRadius: BorderRadius.circular(40.sp),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 35.sp,
                                      child: Text(
                                        DoctorHuntText.thirtyFiveMins,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: greenTeal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 30.sp,
                          ),

                          // Confirm
                          ElevatedButtonWidget(
                              onPressed: () {},
                              textPath: DoctorHuntText.confirm2),
                        ]),
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
