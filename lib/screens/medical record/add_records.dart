import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/all_records.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddRecordScreen extends StatefulWidget {
  const AddRecordScreen({super.key});

  @override
  State<AddRecordScreen> createState() => _AddRecordScreenState();
}

class _AddRecordScreenState extends State<AddRecordScreen> {
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
                whiteText, // Bottom
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
                    RowWidget(rowText: DoctorHuntText.addRecords,
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MedicalRecordScreen(),
                        ));
                      },
                    ),

                    SizedBox(height: 30.sp),

                    //***************** Row *****************
                    Row(children: [
                      Container(
                        height: 125.sp,
                        width: 100.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Image.asset(DoctorHuntAssetsPath.guy),
                      ),
                      SizedBox(width: 10.sp),
                      Container(
                        height: 125.sp,
                        width: 100.sp,
                        decoration: BoxDecoration(
                          color: deathVictorious,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: greenTeal, size: 40.sp),
                            SizedBox(height: 5.sp),
                            Center(
                              child: SizedBox(
                                width: 72.sp,
                                child: Text(
                                  DoctorHuntText.moreImages,
                                  style: TextStyle(
                                      color: greenTeal,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),

                    SizedBox(height: 80.sp),

                    //***************** Text *****************
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          DoctorHuntText.recordFor,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              color: blackText),
                        ),
                      ],
                    ),

                    SizedBox(height: 10.sp),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DoctorHuntText.fullName,
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                color: greenTeal),
                          ),
                          Icon(Icons.edit, color: royalIntrigue, size: 20.sp),
                        ]),

                    SizedBox(height: 20.sp),

                    //***************** Divider *****************
                    Divide(),

                    SizedBox(height: 20.sp),

                    //***************** Text *****************
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          DoctorHuntText.recordType,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              color: blackText),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.sp),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start, children: [
                      //***************** Report Column *****************
                      Column(
                        children: [
                          Image.asset(DoctorHuntAssetsPath.report),
                          SizedBox(height: 5.sp),
                          Text(
                            DoctorHuntText.report,
                            style: TextStyle(
                                color: royalIntrigue,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily:
                                    DoctorHuntAssetsPath.doctorHuntFont),
                          ),
                        ],
                      ),

                      SizedBox(width: 60.sp),

                      //***************** Prescription Column *****************
                      Column(
                        children: [
                          Image.asset(DoctorHuntAssetsPath.prescription),
                          SizedBox(height: 5.sp),
                          Text(
                            DoctorHuntText.prescription,
                            style: TextStyle(
                                color: greenTeal,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily:
                                    DoctorHuntAssetsPath.doctorHuntFont),
                          ),
                        ],
                      ),

                      SizedBox(width: 60.sp),

                      //***************** Invoice Column *****************
                      Column(
                        children: [
                          Image.asset(DoctorHuntAssetsPath.invoice),
                          SizedBox(height: 5.sp),
                          Text(
                            DoctorHuntText.invoice,
                            style: TextStyle(
                                color: royalIntrigue,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily:
                                    DoctorHuntAssetsPath.doctorHuntFont),
                          ),
                        ],
                      ),
                    ]),
                    SizedBox(height: 20.sp),
                    Divide(),

                    SizedBox(height: 20.sp),

                    //***************** Last Column *****************
                    //***************** Text *****************
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          DoctorHuntText.recordCreated,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              color: blackText),
                        ),
                      ],
                    ),

                    SizedBox(height: 10.sp),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DoctorHuntText.dateCreated,
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              color: greenTeal),
                        ),
                        Icon(Icons.edit, color: royalIntrigue, size: 20.sp),
                      ],
                    ),
                    
                    SizedBox(height: 20.sp),
                    Divide(),
                    SizedBox(height: 20.sp),

                    //***************** Button *****************
                    ElevatedButtonWidget(
                      textPath: DoctorHuntText.uploadRecord,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const AllRecordScreen(),
                        ));
                      },
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Divide extends StatelessWidget {
  const Divide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Divider(
        color: blackText,
        thickness: 0.1.sp,
      ),
    );
  }
}
