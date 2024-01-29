import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _switchValue = true;
  bool _switchValue1 = true;
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
                  RowWidget(rowText: DoctorHuntText.settings),

                  SizedBox(height: 20.sp),

                  // Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        DoctorHuntText.accountSettings,
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: royalIntrigue),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.sp),

                  // Change Password
                  AccountSettingsRow(
                    textPath: DoctorHuntText.changePassword,
                    imagePath: DoctorHuntAssetsPath.password,
                    // onTap: () {
                    //   Navigator.of(context).push(MaterialPageRoute(
                    //       builder: (BuildContext context) =>
                    //           const HelpCenterScreen()));
                    // },
                  ),
                  SizedBox(height: 20.sp),

                  // Notifications
                  AccountSettingsRow(
                      textPath: DoctorHuntText.notifications,
                      imagePath: DoctorHuntAssetsPath.notification),
                  SizedBox(height: 20.sp),

                  // Statistics
                  AccountSettingsRow(
                      textPath: DoctorHuntText.statistics,
                      imagePath: DoctorHuntAssetsPath.statistics),
                  SizedBox(height: 20.sp),

                  // About Us
                  AccountSettingsRow(
                      textPath: DoctorHuntText.aboutUs,
                      imagePath: DoctorHuntAssetsPath.about),
                  SizedBox(height: 20.sp),

                  SizedBox(height: 40.sp),
                  // Text
                  Row(
                    children: [
                      Text(
                        DoctorHuntText.moreOptions,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                          color: royalIntrigue,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.sp),

                  // Text Messages
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DoctorHuntText.text,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: royalIntrigue,
                          ),
                        ),
                        Container(
                          width: 40.sp,
                          height: 20.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Switch(
                            activeTrackColor: greenTeal,
                            activeColor: whiteText,
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ),
                      ]),
                  SizedBox(height: 20.sp),

                  // Phone calls
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DoctorHuntText.phone,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: royalIntrigue,
                          ),
                        ),
                        Container(
                          width: 40.sp,
                          height: 20.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Switch(
                            activeTrackColor: greenTeal,
                            activeColor: whiteText,
                            value: _switchValue1,
                            onChanged: (value) {
                              setState(() {
                                _switchValue1 = value;
                              });
                            },
                          ),
                        ),
                      ]),
                  SizedBox(height: 20.sp),

                  // Languages
                  MoreOptionsRow(
                    textPath1: DoctorHuntText.languages,
                    textPath2: DoctorHuntText.english,
                    // onTap: () {
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (BuildContext context) =>const HelpCenterScreen(),
                    //     ),
                    //   );
                    // },
                  ),
                  SizedBox(height: 20.sp),

                  // Currency
                  MoreOptionsRow(
                      textPath1: DoctorHuntText.currency,
                      textPath2: DoctorHuntText.usd),
                  SizedBox(height: 20.sp),

                  // Linked Accounts
                  MoreOptionsRow(
                      textPath1: DoctorHuntText.linkedAccounts,
                      textPath2: DoctorHuntText.facebookGoogle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MoreOptionsRow extends StatelessWidget {
  const MoreOptionsRow({
    super.key,
    this.onTap,
    required this.textPath1,
    required this.textPath2,
  });

  final String textPath1;
  final String textPath2;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        textPath1,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          color: royalIntrigue,
        ),
      ),
      Spacer(),
      Text(
        textPath2,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          color: royalIntrigue,
        ),
      ),
      GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.chevron_right,
          color: royalIntrigue,
        ),
      ),
    ]);
  }
}

class AccountSettingsRow extends StatelessWidget {
  const AccountSettingsRow({
    super.key,
    this.onTap,
    required this.imagePath,
    required this.textPath,
  });

  final String textPath;
  final String imagePath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(imagePath),
      SizedBox(width: 20.sp),
      Text(
        textPath,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
          color: royalIntrigue,
        ),
      ),
      Spacer(),
      GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.chevron_right,
          color: royalIntrigue,
        ),
      ),
    ]);
  }
}
