import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/diagnostic%20tests/diagnostic_test.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/medicine%20order/medicine_order.dart';
import 'package:doctor_hunt/screens/menu/menu.dart';
import 'package:doctor_hunt/screens/patient%20details/patient_details.dart';
import 'package:doctor_hunt/screens/privacy%20policy/privacy_policy.dart';
import 'package:doctor_hunt/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
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
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Back Arrow
                    RowWidget(rowText: DoctorHuntText.helpCenter),

                    SizedBox(height: 30.sp),

                    // Search Box
                    SizedBox(
                      height: 54.sp,
                      width: 320.sp,
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.sp, vertical: 20.sp),
                          isCollapsed: true,
                          hintText: DoctorHuntText.issue,
                          hintStyle: TextStyle(
                            color: greenTeal,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w300,
                          ),
                          filled: true,
                          fillColor: whiteText,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide(color: whiteText, width: 0.5.sp, style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20.sp,
                    ),

                    // First Row
                    ExtractedRowWidget(textPath: DoctorHuntText.booking,
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MenuScreen(),
                        ));
                      },),
                    SizedBox(
                      height: 30.sp,
                    ),
                    // Second Row
                    ExtractedRowWidget(textPath: DoctorHuntText.existing,
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SettingsScreen(),
                        ));
                      },),
                    SizedBox(
                      height: 30.sp,
                    ),
                    // Third Row
                    ExtractedRowWidget(textPath: DoctorHuntText.online,
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const PrivacyPolicyScreen(),
                        ));
                      },),
                    SizedBox(
                      height: 30.sp,
                    ),
                    // Fourth Row
                    ExtractedRowWidget(
                      textPath: DoctorHuntText.feedbacks,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const PatientDetailsScreen(),
                        ));
                      },
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    // Fifth Row
                    ExtractedRowWidget(
                      textPath: DoctorHuntText.medOrders,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MedicineOrderScreen(),
                        ));
                      },
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    // Sixth Row
                    ExtractedRowWidget(
                      textPath: DoctorHuntText.diagnosticTests,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DiagnosticTestScreen(),
                        ));
                      },
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    // Seventh Row
                    ExtractedRowWidget(textPath: DoctorHuntText.healthPlans),
                    SizedBox(
                      height: 30.sp,
                    ),
                    // Eight Row
                    ExtractedRowWidget(textPath: DoctorHuntText.myAccount),
                    SizedBox(
                      height: 30.sp,
                    ),
                    // Nineth Row
                    ExtractedRowWidget(textPath: DoctorHuntText.feature),
                    SizedBox(
                      height: 30.sp,
                    ),
                    // Tenth Row
                    ExtractedRowWidget(textPath: DoctorHuntText.otherIssues),
                    SizedBox(
                      height: 30.sp,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class ExtractedRowWidget extends StatelessWidget {
  const ExtractedRowWidget({
    super.key,
    this.onTap,
    required this.textPath,
  });

  final String textPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textPath,
          style: TextStyle(
              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
              fontSize: 18.sp,
              color: royalIntrigue,
              fontWeight: FontWeight.w300),
        ),
        GestureDetector(
          onTap: onTap,
          child: Icon(
            Icons.chevron_right,
            color: royalIntrigue,
          ),
        ),
      ],
    );
  }
}
