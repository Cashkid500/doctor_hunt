import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/favourite%20doctor/favourite_doctors.dart';
import 'package:doctor_hunt/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFavorite = false;
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

          SizedBox(height: 10.sp),

          // Playlist
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.sp),
                  child: Container(
                    height: 168.sp,
                    width: 116.sp,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/live_doctor1.png", 
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30.sp, left: 40.sp),
                          child: Image.asset("assets/images/live.png", height: 12.sp,),
                        ),
                      ]
                    ),
                  ),
                ),
                // SizedBox(width: 5.sp),
                Container(
                  height: 168.sp,
                width: 116.sp,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/live_doctor2.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                ),
          
                // SizedBox(width: 5.sp),
              Container(
                height: 138.sp,
                width: 116.sp,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/live_doctor3.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.sp, left: 70.sp),
                    child: Image.asset(
                      "assets/images/live.png",
                      height: 12.sp,
                    ),
                  ),
                ]),
              ),
              ]
            ),
          ),
          SizedBox(height: 10.sp),

        // Containers with Images Row
          Padding(
            padding: EdgeInsets.only(left: 15.sp),
            child: Row(
              children: [
                // Light Blue Container
                Container(
                  height: 90.sp,
                width: 80.sp,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      yimnBlue, // Top
                      venetianNights, // Bottom
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Image.asset("assets/images/tooth.png"),
                ),
          
                SizedBox(width: 5.sp),
          
                // Green Container
                Container(
                height: 90.sp,
                width: 80.sp,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      greenTeal, // Top
                      markerGreen, // Bottom
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Image.asset("assets/images/green_image.png"),
              ),
              
              SizedBox(width: 5.sp),
          
              // Yellow Container
              Container(
                height: 90.sp,
                width: 80.sp,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      mangoTango, // Top
                      fadedSunlight,  // Bottom
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Image.asset("assets/images/eye.png"),
              ),
          
              SizedBox(width: 5.sp),
          
              // Red Container
              Container(
                height: 90.sp,
                width: 80.sp,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      bloodBurst, // Top
                      livingCoral, // Bottom
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Image.asset("assets/images/red_image.png"),
              ),
              ]
            ),
          ),

          // Popular Doctor Row
          SizedBox(height: 30.sp),
          Padding(
            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Popular Doctor",
                style: TextStyle(
                    fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: blackText),
              ),
              Text(
                DoctorHuntText.see,
                style: TextStyle(
                  fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: royalIntrigue,
                ),
              ),
            ]),
          ),
          SizedBox(height: 20.sp),

          // Two Female Doctors Row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.sp),
                  child: Container(
                    height: 264.sp,
                    width:190.sp,
                    decoration: BoxDecoration(
                      border: Border.all(color: whiteText, width: 1.0.sp, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/fillerup.png"),
                        SizedBox(height: 20.sp,),
                        Text(
                          "Dr. Fillerup Grab",
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: blackText
                          ),
                        ),
                        SizedBox(height: 5.sp,),
                        Text(
                          "Medicine Specialist",
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w300,
                            color: royalIntrigue
                          ),
                        ),
                        SizedBox(height: 5.sp,),
                        Image.asset(DoctorHuntAssetsPath.rating),
                      ]
                    ),
                  ),
                ),
                SizedBox(width: 5.sp),
          
                // Second Container
                Container(
                  height: 264.sp,
                  width: 190.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/blessing.png"),
                        SizedBox(height: 20.sp,),
                        Text(
                          "Dr. Blessing",
                          style: TextStyle(
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: blackText),
                        ),
                        SizedBox( height: 5.sp,),
                        Text(
                          "Dentist Specialist",
                          style: TextStyle(
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w300,
                              color: royalIntrigue),
                        ),
                        SizedBox(height: 5.sp,),
                        Image.asset(DoctorHuntAssetsPath.rating),
                      ]),
                ),
              ],
            ),
          ),

          // Feature Doctor Row
          SizedBox(height: 30.sp),
          Padding(
            padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    DoctorHuntText.featureDoctor,
                    style: TextStyle(
                        fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: blackText),
                  ),
                  Text(
                    DoctorHuntText.see,
                    style: TextStyle(
                      fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: royalIntrigue,
                    ),
                  ),
                ]),
          ),

          SizedBox(height: 20.sp,),

          // Last Row Horizontal Scroll View
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 15.sp),
              child: Row(children: [
                LastRowContainer(
                    isFavorite: isFavorite,
                    starTextPath: DoctorHuntText.threePointSeven,
                    doctorsNamePath: DoctorHuntText.crick,
                    hourPath: DoctorHuntText.twentyFiveHours,
                    doctorImagePath: DoctorHuntAssetsPath.shouey),
            
                SizedBox(width: 5.sp,),
            
                // Second Container
                LastRowContainer(
                    isFavorite: isFavorite = true,
                    starTextPath: DoctorHuntText.threePointZero,
                    doctorsNamePath: DoctorHuntText.strain,
                    hourPath: DoctorHuntText.twentyTwoHours,
                    doctorImagePath: DoctorHuntAssetsPath.strain),
                SizedBox(width: 5.sp,),
            
                // Third Container
                LastRowContainer(
                    isFavorite: isFavorite = false,
                    starTextPath: DoctorHuntText.twoPointNine,
                    doctorsNamePath: DoctorHuntText.lachinet,
                    hourPath: DoctorHuntText.twentyNineHours,
                    doctorImagePath: DoctorHuntAssetsPath.lachinet),
                SizedBox(width: 5.sp,),
            
                // Fourth Container
                LastRowContainer(
                    isFavorite: isFavorite = true,
                    starTextPath: DoctorHuntText.threePointZero,
                    doctorsNamePath: DoctorHuntText.crick,
                    hourPath: DoctorHuntText.twentyFiveHours,
                    doctorImagePath: DoctorHuntAssetsPath.shouey),
              ]),
            ),
          ),
          SizedBox(height: 20.sp,),
        ]),
      ),
    );
  }
}
