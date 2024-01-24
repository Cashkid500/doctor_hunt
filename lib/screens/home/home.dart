import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 156.sp,
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
                          padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          DoctorHuntText.hi,
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: whiteText,
                                              fontFamily: DoctorHuntAssetsPath
                                                  .doctorHuntFont,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(height: 10.sp),
                                        Text(
                                          DoctorHuntText.findDoctor,
                                          style: TextStyle(
                                              fontSize: 25.sp,
                                              color: whiteText,
                                              fontFamily: DoctorHuntAssetsPath
                                                  .doctorHuntFont,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const ProfileScreen(),
                                        ));
                                      },
                                      child: CircleAvatar(
                                        radius: 30.r,
                                        backgroundImage: AssetImage(
                                          DoctorHuntAssetsPath.profile,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.sp),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.sp,
                ),
                child: SizedBox(
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
                      hintText: DoctorHuntText.homeSearch,
                      hintStyle: TextStyle(
                        color: royalIntrigue,
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w300,
                      ),
                      filled: true,
                      fillColor: whiteText,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                            color: royalIntrigue,
                            width: 0.5.sp,
                            style: BorderStyle.solid),
                      ),
                      prefixIcon: Icon(Icons.menu, color: royalIntrigue),
                      suffixIcon: Icon(Icons.close, color: royalIntrigue),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.sp),
          Padding(
            padding: EdgeInsets.only(left: 20.sp),
            child: Text(
              DoctorHuntText.liveDoctors,
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                fontWeight: FontWeight.w700,
                color: blackText,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
