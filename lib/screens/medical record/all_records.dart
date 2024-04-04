import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/add_records.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/medical%20record/widget.dart';
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
                    //***************** Back Arrow *****************
                    RowWidget(rowText: DoctorHuntText.allRecords,
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const AddRecordScreen(),
                        ));
                      },
                    ),

                    SizedBox(height: 50.sp),

                    //***************** First Box *****************
                    FirstContainer(),
                    SizedBox(height: 10.sp),

                    //***************** Second Box *****************
                    SecondContainer(),
                    SizedBox(height: 10.sp),

                    //***************** Third Box *****************
                    ThirdContainer(),
                    SizedBox(height: 150.sp),
                    
                    //***************** Button *****************
                    ElevatedButtonWidget(
                      textPath: DoctorHuntText.addRecord,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const AddRecordScreen(),
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

