import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/navigation/navigation.dart';
import 'package:doctor_hunt/screens/profile/profile2.dart';
import 'package:doctor_hunt/screens/profile/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 357.sp,
                width: 375.sp,
                decoration: BoxDecoration(
                  color: greenTeal,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.sp, top: 10.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ProfileHeader(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const NavigationScreen(),
                            ));
                          },
                        ),

                        SizedBox(height: 40.sp),

                        //***************** Profile Setup *****************
                        Text(
                          DoctorHuntText.profileSetup,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            color: whiteText,
                          ),
                        ),

                        SizedBox(height: 15.sp),

                        //***************** Update Profile Text *****************
                        SizedBox(
                          width: 335.sp,
                          child: Text(
                            DoctorHuntText.updateProfile,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              color: whiteText,
                              height: 1.5.sp,
                            ),
                          ),
                        ),

                        SizedBox(height: 20.sp),

                        //***************** Profile Picture *****************
                        Center(
                          child: Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 60.r,
                                backgroundImage: const AssetImage(
                                    DoctorHuntAssetsPath.profilePic),
                              ),
                              Container(
                                height: 36.sp,
                                width: 36.sp,
                                decoration: BoxDecoration(
                                  color: royalIntrigue,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: Image.asset(DoctorHuntAssetsPath.camera),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.sp),

              //***************** Personal Information *****************
              Padding(
                padding: EdgeInsets.only(left: 20.sp),
                child: Text(
                  DoctorHuntText.personalInformation,
                  style: TextStyle(
                    fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: blackText,
                  ),
                ),
              ),

              SizedBox(height: 10.sp),

              // //***************** First Textfield *****************
              ProfileTextFieldWidget(titleTextPath: DoctorHuntText.name2, hintTextPath: DoctorHuntText.fullName),

              SizedBox(height: 10.sp),

              // //***************** Second Textfield *****************
            ProfileTextFieldWidget(
              //***************** Contact Number *****************
                  titleTextPath: DoctorHuntText.contactNumber,
                  hintTextPath: DoctorHuntText.internationalNumber),

              SizedBox(
                height: 10.sp,
              ),

              //***************** Third Textfield *****************
              ProfileTextFieldWidget(
                //***************** Date of Birth *****************
                  titleTextPath: DoctorHuntText.dateOfBirth,
                  hintTextPath: DoctorHuntText.dateOrder),
              
              SizedBox(height: 10.sp),

              //***************** Fourth Textfield *****************
              ProfileTextFieldWidget(
                //***************** Location *****************
                  titleTextPath: DoctorHuntText.location2,
                  hintTextPath: DoctorHuntText.addDetails),

              SizedBox(height: 20.sp),

              //***************** Button *****************
              Center(
                child: ElevatedButtonWidget(
                  textPath: DoctorHuntText.continue1,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const Profile2Screen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
