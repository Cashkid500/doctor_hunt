import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/location/location.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/medicine%20order/widget.dart';
import 'package:doctor_hunt/screens/my%20doctors/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicineOrdersScreen extends StatefulWidget {
  const MedicineOrdersScreen({super.key});

  @override
  State<MedicineOrdersScreen> createState() => _MedicineOrdersScreenState();
}

class _MedicineOrdersScreenState extends State<MedicineOrdersScreen> {
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
                  RowWidget(rowText: DoctorHuntText.medicinesOrder,
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LocationScreen(),
                        ));
                      },
                  ),

                  SizedBox(height: 30.sp),

                  //***************** Search Box *****************
                  SearchField(searchPath: DoctorHuntText.search2),

                  SizedBox(
                    height: 30.sp,
                  ),

                  //***************** First Row First Box *****************
                  Row(children: [
                    FirstRowFirstBox(),
                    SizedBox(width: 10.sp),

                    //***************** First Row Second Box *****************
                    FirstRowSecondBox(),
                  ]),

                  SizedBox(height: 20.sp),

                  //***************** Second Row First Box *****************
                  Row(
                    children: [
                      SecondRowFirstBox(),
                      SizedBox(width: 10.sp),

                      //***************** Second Row Second Box *****************
                      SecondRowSecondBox(),
                    ],
                  ),

                  SizedBox(
                    height: 20.sp,
                  ),

                  //***************** Third Row First Box *****************
                  Row(
                    children: [
                      ThirdRowFirstBox(),
                      SizedBox(width: 10.sp),

                      //***************** Third Row Second Box *****************
                      ThirdRowSecondBox(),
                    ],
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

