import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/help%20center/help_center.dart';
import 'package:doctor_hunt/screens/login/login.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/medicine%20order/medicine_order.dart';
import 'package:doctor_hunt/screens/my%20doctors/my_doctors.dart';
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
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                          Row(children: [
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
                    ],
                  ),

                  SizedBox(height: 70.sp),

                  // Row
                  // My Doctor
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MenuRowWidget(
                                menuAssetPath: DoctorHuntAssetsPath.person,
                                menuTextPath: DoctorHuntText.myDoctor,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const MyDoctorsScreen(),
                                    ),
                                  );
                                },
                              ),

                              SizedBox(height: 30.sp),

                              // Medical Records
                              MenuRowWidget(
                                menuAssetPath: DoctorHuntAssetsPath.record,
                                menuTextPath: DoctorHuntText.medicalRecord,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const MedicalRecordScreen(),
                                    ),
                                  );
                                },
                              ),

                              SizedBox(height: 30.sp),

                              // Payments
                              MenuRowWidget(
                                  menuAssetPath: DoctorHuntAssetsPath.payments,
                                  menuTextPath: DoctorHuntText.payment),

                              SizedBox(height: 30.sp),

                              // Medicine Orders
                              MenuRowWidget(
                                menuAssetPath: DoctorHuntAssetsPath.order,
                                menuTextPath: DoctorHuntText.medicineOrder,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const MedicineOrderScreen(),
                                    ),
                                  );
                                },
                              ),

                              SizedBox(height: 30.sp),

                              // Test Bookings
                              MenuRowWidget(
                                  menuAssetPath: DoctorHuntAssetsPath.bookings,
                                  menuTextPath: DoctorHuntText.testBookings),

                              SizedBox(height: 30.sp),

                              // Privacy & Policy
                              MenuRowWidget(
                                menuAssetPath: DoctorHuntAssetsPath.privacy,
                                menuTextPath: DoctorHuntText.privacyPolicy2,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const PrivacyPolicyScreen(),
                                    ),
                                  );
                                },
                              ),

                              SizedBox(height: 30.sp),

                              // Help Center
                              MenuRowWidget(
                                menuAssetPath: DoctorHuntAssetsPath.help,
                                menuTextPath: DoctorHuntText.helpCenter2,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const HelpCenterScreen(),
                                    ),
                                  );
                                },
                              ),

                              SizedBox(height: 30.sp),

                              // Settings
                              MenuRowWidget(
                                menuAssetPath: DoctorHuntAssetsPath.settings,
                                menuTextPath: DoctorHuntText.settings,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const SettingsScreen(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 531.sp,
                          alignment: AlignmentDirectional.topEnd,
                          child: Image.asset(
                            DoctorHuntAssetsPath.menuBackground,
                            height: 531.sp,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30.sp),

                  // Logout
                  Row(
                    children: [
                      Image.asset(DoctorHuntAssetsPath.logout),
                      SizedBox(width: 20.sp),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).pop();
                          _showOrderDialog(context);
                        },
                        child: Text(
                          DoctorHuntText.logout,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: whiteText,
                          ),
                        ),
                      ),
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
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            color: whiteText,
          ),
        ),
        // Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Icon(
            Icons.chevron_right,
            color: whiteText,
            size: 15.sp,
          ),
        ),
      ],
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
          DoctorHuntText.logOut,
          style: TextStyle(
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            fontSize: 26.sp,
            fontWeight: FontWeight.w700,
            color: blackText,
          ),
        ),
        content: Container(
          height: 86.sp,
          width: 360.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    DoctorHuntText.logoutConfirmation,
                    style: TextStyle(
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: royalIntrigue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // Cancel button
                  TextButton(
                    onPressed: () {
                      // Add your action for Cancel here
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => MenuScreen()));
                    },
                    child: Text(
                      DoctorHuntText.cancel,
                      style: TextStyle(
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: greenTeal),
                    ),
                  ),

                  // Okay button
                  TextButton(
                    onPressed: () {
                      // Add your action for OK here
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => LoginScreen()));
                    },
                    child: Text(
                      DoctorHuntText.ok,
                      style: TextStyle(
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: greenTeal,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
