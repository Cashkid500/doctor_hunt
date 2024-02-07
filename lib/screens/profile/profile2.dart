import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile2Screen extends StatefulWidget {
  const Profile2Screen({super.key});

  @override
  State<Profile2Screen> createState() => _Profile2ScreenState();
}

class _Profile2ScreenState extends State<Profile2Screen> {
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
                  ProfileHeader(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ProfileScreen(),
                      ));
                    },
                  ),

                  SizedBox(height: 200.sp),

                  //***************** Name *****************
                  Text(
                    DoctorHuntText.yourName,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      color: whiteText,
                    ),
                  ),

                  SizedBox(height: 40.sp),

                  //***************** TextForm Field *****************
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: whiteText)),
                      labelText: DoctorHuntText.fullName,
                      labelStyle: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        color: whiteText,
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
