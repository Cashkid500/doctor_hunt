import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DoctorHuntText.hi,
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: whiteText,
                                fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                fontWeight: FontWeight.w300),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.sp, top: 10.sp),
                            child: CircleAvatar(
                              radius: 25.r,
                              backgroundImage: AssetImage(
                                DoctorHuntAssetsPath.profile,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        DoctorHuntText.findDoctor,
                        style: TextStyle(
                            fontSize: 25.sp,
                            color: whiteText,
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontWeight: FontWeight.w700),
                      ),
                    ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
