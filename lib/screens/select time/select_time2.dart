import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
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
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 10.sp),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Back Arrow
                  RowWidget(rowText: DoctorHuntText.selectTime),

                  SizedBox(height: 50.sp),

                  // Dr Shruti Kedia
                  ShrutiKediaContainer(isFavorite: isFavorite = true),

                  SizedBox(height: 30.sp),

                  // Scroll View

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
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
                                DoctorHuntText.today,
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
                                DoctorHuntText.noSlots,
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
                                DoctorHuntText.tomorrow,
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
                                DoctorHuntText.nineSlots,
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
                                DoctorHuntText.thur,
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
                                DoctorHuntText.tenSlots,
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
                      ],
                    ),
                  ),

                  SizedBox(height: 50.sp),

                  Text(
                    DoctorHuntText.today,
                    style: TextStyle(
                      color: blackText,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    ),
                  ),

                  SizedBox(height: 30.sp),

                  // Afternoon Slots
                  SlotWidget(slotTextPath: DoctorHuntText.afternoon),

                  SizedBox(height: 20.sp),

                  // Row Tab Bar
                  SizedBox(
                    height: 80.sp,
                    width: double.infinity,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start, 
                      alignment: WrapAlignment.start,
                      runAlignment: WrapAlignment.start,
                      spacing: 5.sp,
                      runSpacing: 20.sp,
                        children: [
                          ...List.generate(
                            7, (index) =>
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentTab = index;
                                });
                              },
                              child: Container(
                                height: 40.sp,
                                width: 76.sp,
                                decoration: BoxDecoration(
                                  color: currentTab == index ? greenTeal : deathVictorious,
                                  borderRadius: BorderRadius.circular(6.sp),
                                ),
                                child: Center(
                                  child: Text(
                                    index == 0 ? DoctorHuntText.onePM : (index == 1) ? DoctorHuntText.oneThirty : (index == 2) ? DoctorHuntText.twoPM : (index == 3) ? DoctorHuntText.twoThirty : (index == 4) ? DoctorHuntText.threePM : (index == 5) ? DoctorHuntText.threeThirty : DoctorHuntText.fourPM, 
                                    style: TextStyle(
                                      color: currentTab == index ? whiteText : greenTeal,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                         ],
                      ),
                    ),
                    
                    SizedBox(height: 40.sp),

                  // Evening Slots
                  SlotWidget(slotTextPath: DoctorHuntText.evening),

                  SizedBox(height: 20.sp),

                  // Row Tab Bar 
                  SizedBox(
                    height: 80.sp,
                    width: double.infinity,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      alignment: WrapAlignment.start,
                      runAlignment: WrapAlignment.start,
                      spacing: 5.sp,
                      runSpacing: 20.sp,
                      children: [
                        ...List.generate(
                          5,
                          (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: Container(
                              height: 40.sp,
                              width: 76.sp,
                              decoration: BoxDecoration(
                                color: currentIndex == index
                                    ? greenTeal
                                    : deathVictorious,
                                borderRadius: BorderRadius.circular(6.sp),
                              ),
                              child: Center(
                                child: Text(
                                  index == 0
                                      ? DoctorHuntText.fivePM
                                      : (index == 1)
                                          ? DoctorHuntText.fiveThirty
                                          : (index == 2)
                                              ? DoctorHuntText.sixPM
                                              : (index == 3)
                                                  ? DoctorHuntText.sixThirty
                                                  : DoctorHuntText.sevenPM,
                                  style: TextStyle(
                                    color: currentIndex == index
                                        ? whiteText
                                        : greenTeal,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    fontFamily:
                                        DoctorHuntAssetsPath.doctorHuntFont,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
