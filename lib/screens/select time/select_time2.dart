import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/select%20time/select_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTime2Screen extends StatefulWidget {
  const SelectTime2Screen({super.key});

  @override
  State<SelectTime2Screen> createState() => _SelectTime2ScreenState();
}

class _SelectTime2ScreenState extends State<SelectTime2Screen> {
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
                    RowWidget(rowText: "Select Time"),

                    SizedBox(height: 50.sp),

                    // Dr Shruti Kedia
                    ShrutiKediaContainer(isFavorite: isFavorite = true),

                    SizedBox(height: 30.sp),

                    // Scroll View

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        // First Row First Container
                        Container(
                          height: 54.sp,
                          width: 130.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.sp),
                            border: Border.all(
                                color: royalIntrigue,
                                width: 1.sp,
                                style: BorderStyle.solid),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Today, 23 Feb",
                                style: TextStyle(
                                  color: blackText,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                ),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                "No slots available",
                                style: TextStyle(
                                  color: royalIntrigue,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10.sp),
                        // First Row Second Container
                        Container(
                          height: 54.sp,
                          width: 150.sp,
                          decoration: BoxDecoration(
                            color: greenTeal,
                            borderRadius: BorderRadius.circular(4.sp),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Tomorrow, 24 Feb",
                                style: TextStyle(
                                  color: whiteText,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                ),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                "9 slots available",
                                style: TextStyle(
                                  color: whiteText,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 10.sp),
                        // First Row Third Container
                        Container(
                          height: 54.sp,
                          width: 123.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.sp),
                            border: Border.all(
                                color: royalIntrigue,
                                width: 1.sp,
                                style: BorderStyle.solid),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Thu, 25 Feb",
                                style: TextStyle(
                                  color: royalIntrigue,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                ),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                "10 slots available",
                                style: TextStyle(
                                  color: royalIntrigue,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),

                    SizedBox(height: 50.sp),
                    Text(
                      "Today, 23 Feb",
                      style: TextStyle(
                        color: blackText,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      ),
                    ),

                    SizedBox(height: 30.sp),
                    SlotWidget(slotTextPath: "Afternoon 7 slots"),

                    SizedBox(height: 20.sp),

                    // Row
                    Row(
                        children: [
                          // First Container
                          Container(
                            height: 40.sp,
                            width: 76.sp,
                            decoration: BoxDecoration(
                              color: deathVictorious,
                              borderRadius: BorderRadius.circular(6.sp),
                            ),
                            child: Center(
                              child: Text(
                                "1:00 PM",
                                style: TextStyle(
                                  color: greenTeal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 5.sp),
                          // Second Container
                          Container(
                            height: 40.sp,
                            width: 76.sp,
                            decoration: BoxDecoration(
                              color: deathVictorious,
                              borderRadius: BorderRadius.circular(6.sp),
                            ),
                            child: Center(
                              child: Text(
                                "1:30 PM",
                                style: TextStyle(
                                  color: greenTeal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                ),
                              ),
                            ),
                          ),
                          
                          SizedBox(width: 5.sp),
                          // Third Container
                          Container(
                            height: 40.sp,
                            width: 76.sp,
                            decoration: BoxDecoration(
                              color: greenTeal,
                              borderRadius: BorderRadius.circular(6.sp),
                            ),
                            child: Center(
                              child: Text(
                                "2:00 PM",
                                style: TextStyle(
                                  color: whiteText,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 5.sp),
                          // Fourth Container
                          Container(
                            height: 40.sp,
                            width: 76.sp,
                            decoration: BoxDecoration(
                              color: deathVictorious,
                              borderRadius: BorderRadius.circular(6.sp),
                            ),
                            child: Center(
                              child: Text(
                                "2:30 PM",
                                style: TextStyle(
                                  color: greenTeal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),

                      SizedBox(height: 20.sp),

                      // Row
                      Row(
                        children: [
                      // First Container
                      Container(
                        height: 40.sp,
                        width: 76.sp,
                        decoration: BoxDecoration(
                          color: deathVictorious,
                          borderRadius: BorderRadius.circular(6.sp),
                        ),
                        child: Center(
                          child: Text(
                            "3:00 PM",
                            style: TextStyle(
                              color: greenTeal,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5.sp),
                      // Second Container
                      Container(
                        height: 40.sp,
                        width: 76.sp,
                        decoration: BoxDecoration(
                          color: deathVictorious,
                          borderRadius: BorderRadius.circular(6.sp),
                        ),
                        child: Center(
                          child: Text(
                            "3:30 PM",
                            style: TextStyle(
                              color: greenTeal,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5.sp),
                      // Third Container
                      Container(
                        height: 40.sp,
                        width: 76.sp,
                        decoration: BoxDecoration(
                          color: deathVictorious,
                          borderRadius: BorderRadius.circular(6.sp),
                        ),
                        child: Center(
                          child: Text(
                            "4:00 PM",
                            style: TextStyle(
                              color: greenTeal,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            ),
                          ),
                        ),
                      ),
                    ]
                    ),

                    SizedBox(height: 20.sp),

                    // Evening Slots
                    SlotWidget(slotTextPath: "Evening 5 slots"),

                    SizedBox(height: 20.sp),

                    // Row
                    Row(
                      children: [
                      // First Container
                      Container(
                        height: 40.sp,
                        width: 76.sp,
                        decoration: BoxDecoration(
                          color: deathVictorious,
                          borderRadius: BorderRadius.circular(6.sp),
                        ),
                        child: Center(
                          child: Text(
                            "5:00 PM",
                            style: TextStyle(
                              color: greenTeal,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5.sp),
                      // Second Container
                      Container(
                        height: 40.sp,
                        width: 76.sp,
                        decoration: BoxDecoration(
                          color: greenTeal,
                          borderRadius: BorderRadius.circular(6.sp),
                        ),
                        child: Center(
                          child: Text(
                            "5:30 PM",
                            style: TextStyle(
                              color: whiteText,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5.sp),
                      // Third Container
                      Container(
                        height: 40.sp,
                        width: 76.sp,
                        decoration: BoxDecoration(
                          color: deathVictorious,
                          borderRadius: BorderRadius.circular(6.sp),
                        ),
                        child: Center(
                          child: Text(
                            "6:00 PM",
                            style: TextStyle(
                              color: greenTeal,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 5.sp),
                      // Fourth Container
                      Container(
                        height: 40.sp,
                        width: 76.sp,
                        decoration: BoxDecoration(
                          color: deathVictorious,
                          borderRadius: BorderRadius.circular(6.sp),
                        ),
                        child: Center(
                          child: Text(
                            "6:30 PM",
                            style: TextStyle(
                              color: greenTeal,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            ),
                          ),
                        ),
                      ),
                    ]),

                    SizedBox(height: 20.sp),

                    // Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      // First Container
                      Container(
                        height: 40.sp,
                        width: 76.sp,
                        decoration: BoxDecoration(
                          color: deathVictorious,
                          borderRadius: BorderRadius.circular(6.sp),
                        ),
                        child: Center(
                          child: Text(
                            "7:00 PM",
                            style: TextStyle(
                              color: greenTeal,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class SlotWidget extends StatelessWidget {
  const SlotWidget({
    super.key,
    required this.slotTextPath,
  });

  final String slotTextPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          slotTextPath,
          style: TextStyle(
            color: blackText,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          ),
        ),
      ],
    );
  }
}
