import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/help%20center/help_center.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/medicine%20order/medicine_order.dart';
import 'package:doctor_hunt/screens/privacy%20policy/privacy_policy.dart';
import 'package:doctor_hunt/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
                englishManor, // Top
                luxeBlue, // Bottom
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundImage: AssetImage(
                        DoctorHuntAssetsPath.menu,
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DoctorHuntText.fullName,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: whiteText,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Row(
                          children: [
                          Icon(Icons.phone, color: whiteText, size: 12.sp),
                          SizedBox(width: 3.sp),
                          Text(
                            DoctorHuntText.phoneNumber,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: whiteText,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 30.sp,
                      width: 30.sp,
                      decoration: BoxDecoration(
                        color: redText,
                        borderRadius: BorderRadius.circular(10.sp),
                      ),
                      child: Icon(Icons.close, color: whiteText, size: 20.sp),
                    ),
                  ]),
                  SizedBox(height: 70.sp),

                  // Row
                  MenuRowWidget(menuAssetPath: DoctorHuntAssetsPath.person, menuTextPath: DoctorHuntText.myDoctor),
                  SizedBox(height: 30.sp),
                  // Medical Records
                  MenuRowWidget(menuAssetPath: DoctorHuntAssetsPath.record, menuTextPath: DoctorHuntText.medicalRecord,
                 onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MedicalRecordScreen(),
                        ));
                      },
                  ),
                  SizedBox(height: 30.sp),
                  // Payments
                  MenuRowWidget(menuAssetPath: DoctorHuntAssetsPath.payments, menuTextPath: DoctorHuntText.payment),
                  SizedBox(height: 30.sp),
                  // Medicine Orders
                  MenuRowWidget(menuAssetPath: DoctorHuntAssetsPath.order, menuTextPath: DoctorHuntText.medicineOrder,
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MedicineOrderScreen(),
                        ));
                      },
                  ),
                  SizedBox(height: 30.sp),
                  // Test Bookings
                  MenuRowWidget(menuAssetPath: DoctorHuntAssetsPath.bookings, menuTextPath: DoctorHuntText.testBookings),
                  SizedBox(height: 30.sp),
                  // Privacy & Policy
                  MenuRowWidget(menuAssetPath: DoctorHuntAssetsPath.privacy, menuTextPath: DoctorHuntText.privacyPolicy2,
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const PrivacyPolicyScreen(),
                        ));
                      },
                  ),
                  SizedBox(height: 30.sp),
                  // Help Center
                  MenuRowWidget(menuAssetPath: DoctorHuntAssetsPath.help, menuTextPath: DoctorHuntText.helpCenter2,
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const HelpCenterScreen(),
                        ));
                      },
                  ),
                  SizedBox(height: 30.sp),
                  // Settings
                  MenuRowWidget(menuAssetPath: DoctorHuntAssetsPath.settings, menuTextPath: DoctorHuntText.settings,
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SettingsScreen(),
                        ));
                      },
                  ),
                  SizedBox(height: 80.sp),
                  // Logout
                  Row(
                    children: [
                      Image.asset(DoctorHuntAssetsPath.logout),
                      SizedBox(width: 20.sp),
                      Text(
                        DoctorHuntText.logout,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: whiteText,
                        ),
                      ),
                    ]
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

class MenuRowWidget extends StatelessWidget {
  const MenuRowWidget({
    super.key,
    this.onTap,
    required this.menuAssetPath,
    required this.menuTextPath,
  });

  final String menuAssetPath;
  final String menuTextPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Image.asset(menuAssetPath),
      SizedBox(width: 20.sp),
      Text(
        menuTextPath,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          color: whiteText,
        ),
      ),
      Spacer(),
      GestureDetector(
        onTap: onTap,
        child: Icon(Icons.chevron_right,color: whiteText,size: 30.sp,)),
    ]
    );
  }
}
