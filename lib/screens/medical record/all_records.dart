import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/medicine%20order/medicine_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllRecordScreen extends StatefulWidget {
  const AllRecordScreen({super.key});

  @override
  State<AllRecordScreen> createState() => _AllRecordScreenState();
}

class _AllRecordScreenState extends State<AllRecordScreen> {
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
                    // Back Arrow
                    RowWidget(rowText: DoctorHuntText.allRecords),

                    SizedBox(height: 50.sp),

                    // First Box
                    FirstContainer(),
                    SizedBox(height: 10.sp),

                    // Second Box
                    SecondContainer(),
                    SizedBox(height: 10.sp),

                    // Third Box
                    ThirdContainer(),
                    SizedBox(height: 180.sp),
                    
                    // Button
                    ElevatedButtonWidget(
                      textPath: DoctorHuntText.addRecord,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MedicineOrderScreen(),
                        ));
                      },
                    ),
                  ]
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.sp,
      width: 335.sp,
      decoration: BoxDecoration(
        color: whiteText,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.more_vert,
                color: royalIntrigue,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.sp),
            child: Row(children: [
              Container(
                height: 60.sp,
                width: 60.sp,
                decoration: BoxDecoration(
                  color: greenTeal,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Day(dayPath: DoctorHuntText.day),
                    SizedBox(height: 2.sp),
                    Month(monthPath: DoctorHuntText.month),
                  ],
                ),
              ),
              SizedBox(width: 10.sp),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddedRecords(),
                    SizedBox(height: 5.sp),
                    Name(namePath: DoctorHuntText.recordForAbdullahMamun),
                    SizedBox(height: 10.sp),
                    Prescription(),
                  ]
                  ),
            ]
            ),
          ),
          SizedBox(height: 4.sp),
          NewBox(),
        ],
      ),
    );
  }
}

class SecondContainer extends StatelessWidget {
  const SecondContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.sp,
      width: 335.sp,
      decoration: BoxDecoration(
        color: whiteText,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.more_vert,
                color: royalIntrigue,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.sp),
            child: Row(children: [
              Container(
                height: 60.sp,
                width: 60.sp,
                decoration: BoxDecoration(
                  color: greenTeal,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Day(dayPath: DoctorHuntText.day2),
                    SizedBox(height: 2.sp),
                    Month(monthPath: DoctorHuntText.month),
                  ],
                ),
              ),
              SizedBox(width: 10.sp),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddedRecords(),
                    SizedBox(height: 5.sp),
                    Name(namePath: DoctorHuntText.recordForAbdullahShuvo),
                    SizedBox(height: 10.sp),
                    Prescription(),
                  ]
                  ),
            ]
            ),
          ),
          SizedBox(height: 4.sp),
          NewBox(),
        ],
      ),
    );
  }
}

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.sp,
      width: 335.sp,
      decoration: BoxDecoration(
        color: whiteText,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.more_vert,
                color: royalIntrigue,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.sp),
            child: Row(children: [
              Container(
                height: 60.sp,
                width: 60.sp,
                decoration: BoxDecoration(
                  color: greenTeal,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Day(dayPath: DoctorHuntText.firstDay),
                    SizedBox(height: 2.sp),
                    Month(monthPath: DoctorHuntText.month2),
                  ],
                ),
              ),
              SizedBox(width: 10.sp),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddedRecords(),
                    SizedBox(height: 5.sp),
                    Name(namePath: DoctorHuntText.recordForShrutiKedia),
                    SizedBox(height: 10.sp),
                    Prescription(),
                  ]
                  ),
                ]
            ),
          ),
          SizedBox(height: 4.sp),
          NewBox(),
        ],
      ),
    );
  }
}

class Prescription extends StatelessWidget {
  const Prescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      DoctorHuntText.onePrescription,
      style: TextStyle(
          color: royalIntrigue,
          fontSize: 13.sp,
          fontFamily: DoctorHuntAssetsPath
              .doctorHuntFont,
          fontWeight: FontWeight.w300),
    );
  }
}

class NewBox extends StatelessWidget {
  const NewBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 22.sp,
            width: 60.sp,
            decoration: BoxDecoration(
              color: deathVictorious,
              borderRadius: BorderRadius.circular(2.r),
            ),
            child: Center(
              child: Text(
                DoctorHuntText.new1,
                style: TextStyle(
                    fontFamily: DoctorHuntAssetsPath
                        .doctorHuntFont,
                    color: greenTeal,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({
    super.key,
    required this.namePath,
  });

  final String namePath;

  @override
  Widget build(BuildContext context) {
    return Text(
      namePath,
      style: TextStyle(
          color: greenTeal,
          fontSize: 13.sp,
          fontFamily: DoctorHuntAssetsPath
              .doctorHuntFont,
          fontWeight: FontWeight.w300),
    );
  }
}

class AddedRecords extends StatelessWidget {
  const AddedRecords({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      DoctorHuntText.recordsAddedByYou,
      style: TextStyle(
          color: blackText,
          fontSize: 14.sp,
          fontFamily: DoctorHuntAssetsPath
              .doctorHuntFont,
          fontWeight: FontWeight.w700),
    );
  }
}

class Month extends StatelessWidget {
  const Month({
    super.key,
    required this.monthPath,
  });

  final String monthPath;

  @override
  Widget build(BuildContext context) {
    return Text(
      monthPath,
      style: TextStyle(
          color: whiteText,
          fontSize: 14.sp,
          fontFamily: DoctorHuntAssetsPath
              .doctorHuntFont,
          fontWeight: FontWeight.w700),
    );
  }
}

class Day extends StatelessWidget {
  const Day({
    super.key,
    required this.dayPath,
  });

  final String dayPath;

  @override
  Widget build(BuildContext context) {
    return Text(
      dayPath,
      style: TextStyle(
          color: whiteText,
          fontSize: 14.sp,
          fontFamily: DoctorHuntAssetsPath
              .doctorHuntFont,
          fontWeight: FontWeight.w700),
    );
  }
}
