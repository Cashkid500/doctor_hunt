import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/doctor%20appointment/doctor_appointment.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/navigation/navigation.dart';
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
  int currentTab = 0;
  int currentIndex = 0;
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
                    //********* Back Arrow **********
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp),
                      child: RowWidget(
                        rowText: DoctorHuntText.appointment,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const DoctorAppointmentScreen(),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 20.sp),

                    //************ Calendar ***********
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

                          //************ Available Time Row Tab Bar ************
                          Row(
                            children: [
                              ...List.generate(
                                5,
                                (index) => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentTab = index;
                                        });
                                      },
                                      child: Container(
                                        height: 60.sp,
                                        width: 60.sp,
                                        decoration: BoxDecoration(
                                          color: currentTab == index
                                              ? greenTeal
                                              : deathVictorious,
                                          borderRadius:
                                              BorderRadius.circular(40.sp),
                                        ),
                                        child: Center(
                                          child: SizedBox(
                                            width: 35.sp,
                                            child: Text(
                                              index == 0
                                                  ? DoctorHuntText.tenAM
                                                  : (index == 1)
                                                      ? DoctorHuntText.twelveAM
                                                      : (index == 2)
                                                          ? DoctorHuntText.twoPM
                                                          : (index == 3)
                                                              ? DoctorHuntText
                                                                  .threePM
                                                              : DoctorHuntText
                                                                  .fourPM,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: DoctorHuntAssetsPath
                                                    .doctorHuntFont,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w400,
                                                color: currentTab == index
                                                    ? whiteText
                                                    : greenTeal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (index != 4) SizedBox(width: 10.sp),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 30.sp),

                          //************ Text *************
                          TextRow(rowTextPath: DoctorHuntText.reminder),
                          SizedBox(height: 20.sp),

                          //************* Reminder Me Before Row Tab Bar ************
                          Row(
                            children: [
                              ...List.generate(
                                5,
                                (index) => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentIndex = index;
                                        });
                                      },
                                      child: Container(
                                        height: 60.sp,
                                        width: 60.sp,
                                        decoration: BoxDecoration(
                                          color: currentIndex == index
                                              ? greenTeal
                                              : deathVictorious,
                                          borderRadius:
                                              BorderRadius.circular(40.sp),
                                        ),
                                        child: Center(
                                          child: SizedBox(
                                            width: 35.sp,
                                            child: Text(
                                              index == 0
                                                  ? DoctorHuntText.thirtyMins
                                                  : (index == 1)
                                                      ? DoctorHuntText.fortyMins
                                                      : (index == 2)
                                                          ? DoctorHuntText
                                                              .twentyFiveMins
                                                          : (index == 3)
                                                              ? DoctorHuntText
                                                                  .tenMins
                                                              : DoctorHuntText
                                                                  .thirtyFiveMins,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: DoctorHuntAssetsPath
                                                    .doctorHuntFont,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w400,
                                                color: currentIndex == index
                                                    ? whiteText
                                                    : greenTeal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (index != 4) SizedBox(width: 10.sp),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 30.sp,
                          ),

                          //********** Confirm Button ************
                          ElevatedButtonWidget(
                              onPressed: () {
                                _showOrderDialog(context);
                              },
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

// Alert Dialog
void _showOrderDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          "",
        ),
        content: Container(
          height: 520.sp,
          width: 335.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 156.sp,
                width: 156.sp,
                decoration: BoxDecoration(
                  color: deathVictorious,
                  borderRadius: BorderRadius.circular(100.sp),
                ),
                child: Image.asset(DoctorHuntAssetsPath.like),
              ),

              SizedBox(
                height: 20.sp,
              ),

              //********* Thank You Text ********
              Text(
                DoctorHuntText.thankYou,
                style: TextStyle(
                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                  fontSize: 38.sp,
                  fontWeight: FontWeight.w700,
                  color: blackText,
                ),
              ),

              SizedBox(
                height: 15.sp,
              ),

              //********* Successful Appointment Text *************
              Text(
                DoctorHuntText.successfulAppointment,
                style: TextStyle(
                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                  fontSize: 16.5.sp,
                  fontWeight: FontWeight.w400,
                  color: royalIntrigue,
                ),
              ),

              SizedBox(
                height: 30.sp,
              ),
              SizedBox(
                width: 265.sp,
                child: Text(
                  DoctorHuntText.appointmentBooking,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: royalIntrigue,
                    height: 1.5.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),

              //********** Done *********
              ElevatedButtonWidget(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const NavigationScreen(),
                      ),
                    );
                  },
                  textPath: DoctorHuntText.done),

              SizedBox(
                height: 20.sp,
              ),

              //******** Edit your appointment **************
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const DoctorAppointment2Screen()));
                },
                child: Text(
                  DoctorHuntText.edit,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: royalIntrigue,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
