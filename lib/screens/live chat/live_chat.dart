import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveChatScreen extends StatefulWidget {
  const LiveChatScreen({super.key});

  @override
  State<LiveChatScreen> createState() => _LiveChatScreenState();
}

class _LiveChatScreenState extends State<LiveChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: royalIntrigue,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(DoctorHuntAssetsPath.liveChatWallpaper),
                fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(right: 20.sp, left: 20.sp),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30.sp,
                            width: 30.sp,
                            decoration: BoxDecoration(
                                color: whiteText,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Icon(Icons.keyboard_arrow_left,
                                color: royalIntrigue),
                          ),
                          Image.asset(DoctorHuntAssetsPath.liveChatProfile),
                        ]
                      ),

                    // SizedBox(height: 280.sp),
                    Spacer(),

                    // First Row
                    Row(children: [
                      Image.asset(DoctorHuntAssetsPath.tween),
                      SizedBox(width: 5.sp),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 65.sp, left: 10.sp),
                            child: Text(
                              DoctorHuntText.everhart,
                              style: TextStyle(
                                  color: whiteText,
                                  fontSize: 18.sp,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),

                          SizedBox(height: 5.sp),

                          Text(
                            DoctorHuntText.thanks,
                            style: TextStyle(
                                color: royalIntrigue,
                                fontSize: 14.sp,
                                fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ]
                    ),

                    SizedBox(height: 20.sp),

                    // Second Row
                    Row(children: [
                      Image.asset(DoctorHuntAssetsPath.mash),
                      SizedBox(width: 5.sp),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 105.sp, left: 10.sp),
                            child: Text(
                              DoctorHuntText.mash,
                              style: TextStyle(
                                  color: whiteText,
                                  fontSize: 18.sp,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),

                          SizedBox(height: 5.sp),

                          Padding(
                            padding: EdgeInsets.only(left: 5.sp),
                            child: Text(
                              DoctorHuntText.treat,
                              style: TextStyle(
                                  color: royalIntrigue,
                                  fontSize: 14.sp,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                    ]
                    ),

                    SizedBox(height: 20.sp),

                    // Third Row
                    Row(children: [
                      Image.asset(DoctorHuntAssetsPath.wack),
                      SizedBox(width: 5.sp),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 84.sp, left: 10.sp),
                            child: Text(
                              DoctorHuntText.wack,
                              style: TextStyle(
                                  color: whiteText,
                                  fontSize: 18.sp,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),

                          SizedBox(height: 5.sp),

                          Padding(
                            padding: EdgeInsets.only(left: 10.sp),
                            child: Text(
                              DoctorHuntText.directory,
                              style: TextStyle(
                                  color: royalIntrigue,
                                  fontSize: 14.sp,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                    ]
                    ),

                    SizedBox(height: 20.sp),

                    // Fourth Row
                    Row(children: [
                      Image.asset(DoctorHuntAssetsPath.love),
                      SizedBox(width: 5.sp),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 95.sp, left: 6.sp),
                            child: Text(
                              DoctorHuntText.comfort,
                              style: TextStyle(
                                  color: whiteText,
                                  fontSize: 18.sp,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(height: 5.sp),
                          Padding(
                            padding: EdgeInsets.only(left: 12.sp),
                            child: Text(
                              DoctorHuntText.education,
                              style: TextStyle(
                                  color: royalIntrigue,
                                  fontSize: 14.sp,
                                  fontFamily:
                                      DoctorHuntAssetsPath.doctorHuntFont,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                    ]
                  ),

                  SizedBox(height: 30.sp),

                  // Add a comment
                  SizedBox(
                    width: 335.sp,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27.r)),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 20.sp),
                        isCollapsed: true,
                        hintText: DoctorHuntText.comment,
                        hintStyle: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: royalIntrigue,
                            ),
                        filled: true,
                        fillColor: whiteText,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27.r),
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 5.sp),
                          child: Container(
                            height: 44.sp,
                            width: 44.sp,
                            decoration: BoxDecoration(
                              color: greenTeal,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Image.asset(DoctorHuntAssetsPath.message),
                          ),
                        ),
                        suffixIcon: Image.asset(DoctorHuntAssetsPath.emoji),
                        ),
                        
                      ),
                    ),
                  ]
                ),
            ),
          ),
        ),
      ),
    );
  }
}
