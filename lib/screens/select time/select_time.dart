import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/find%20doctors/find_doctors.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/select%20time/select_time2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTimeScreen extends StatefulWidget {
  const SelectTimeScreen({super.key});

  @override
  State<SelectTimeScreen> createState() => _SelectTimeScreenState();
}

class _SelectTimeScreenState extends State<SelectTimeScreen> {
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
                  // Back Arrow
                  RowWidget(
                    rowText: DoctorHuntText.selectTime,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FindDoctorsScreen(),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 50.sp),

                  // Dr Shruti Kedia
                  ShrutiKediaContainer(isFavorite: isFavorite = true),

                  SizedBox(height: 30.sp),

                  // Horizontal Scroll View
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          3,
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
                                  height: 54.sp,
                                  width: index == 2
                                      ? 123.sp
                                      : index == 1
                                          ? 150.sp
                                          : 130.sp,
                                  decoration: BoxDecoration(
                                    color:
                                        currentTab == index ? greenTeal : null,
                                    borderRadius: BorderRadius.circular(4.sp),
                                    border: currentTab == index
                                        ? null
                                        : Border.all(
                                            color: royalIntrigue,
                                            width: 1.sp,
                                            style: BorderStyle.solid),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        index == 0
                                            ? DoctorHuntText.today
                                            : (index == 1)
                                                ? DoctorHuntText.tomorrow
                                                : DoctorHuntText.thur,
                                        style: TextStyle(
                                          color: currentTab == index
                                              ? whiteText
                                              : blackText,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.sp,
                                      ),
                                      Text(
                                        index == 0
                                            ? DoctorHuntText.noSlots
                                            : (index == 1)
                                                ? DoctorHuntText.nineSlots
                                                : DoctorHuntText.tenSlots,
                                        style: TextStyle(
                                          color: currentTab == index
                                              ? whiteText
                                              : royalIntrigue,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: DoctorHuntAssetsPath
                                              .doctorHuntFont,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (index != 2) SizedBox(width: 10.sp),
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

                  Text(
                    DoctorHuntText.noSlots,
                    style: TextStyle(
                      color: royalIntrigue,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    ),
                  ),

                  SizedBox(height: 30.sp),

                  Container(
                    height: 54.sp,
                    width: 306.sp,
                    decoration: BoxDecoration(
                      color: greenTeal,
                      borderRadius: BorderRadius.circular(4.sp),
                    ),
                    child: Center(
                      child: Text(
                        DoctorHuntText.nextAvailability,
                        style: TextStyle(
                          color: whiteText,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30.sp),

                  Text(
                    DoctorHuntText.or,
                    style: TextStyle(
                      color: royalIntrigue,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    ),
                  ),

                  SizedBox(height: 30.sp),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectTime2Screen()),
                      );
                    },
                    child: Container(
                      height: 54.sp,
                      width: 306.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.sp),
                        border: Border.all(
                            color: royalIntrigue,
                            width: 1.sp,
                            style: BorderStyle.solid),
                      ),
                      child: Center(
                        child: Text(
                          DoctorHuntText.contactClinic,
                          style: TextStyle(
                            color: greenTeal,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          ),
                        ),
                      ),
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

class ShrutiKediaContainer extends StatelessWidget {
  const ShrutiKediaContainer({
    super.key,
    required this.isFavorite,
  });

  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98.sp,
      width: 335.sp,
      decoration: BoxDecoration(
        color: whiteText,
        borderRadius: BorderRadius.circular(8.sp),
        border:
            Border.all(color: whiteText, width: 1.sp, style: BorderStyle.solid),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 10.sp, right: 10.sp, top: 10.sp, bottom: 10.sp),
        child: Row(children: [
          Image.asset(DoctorHuntAssetsPath.tranquilli),
          SizedBox(
            width: 8.sp,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.sp),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Text(
                    DoctorHuntText.shruti,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      color: blackText,
                    ),
                  ),
                  SizedBox(
                    width: 75.sp,
                  ),
                  Icon(
                    !isFavorite ? Icons.favorite_border_sharp : Icons.favorite,
                    color: !isFavorite ? Colors.grey : Colors.red,
                    size: 20.sp,
                  ),
                ],
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                DoctorHuntText.upasana,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                  color: royalIntrigue,
                ),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Image.asset(DoctorHuntAssetsPath.rating)
            ]),
          ),
        ]),
      ),
    );
  }
}
