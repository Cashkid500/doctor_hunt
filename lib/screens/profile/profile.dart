import 'package:doctor_hunt/constants/asset_path.dart';
import 'package:doctor_hunt/constants/color_constants.dart';
import 'package:doctor_hunt/constants/text_constants.dart';
import 'package:doctor_hunt/screens/medical%20record/medical_record.dart';
import 'package:doctor_hunt/screens/navigation/navigation.dart';
import 'package:doctor_hunt/screens/profile/profile2.dart';
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

              // First Textfield
              Padding(
                padding: EdgeInsets.only(left: 20.sp, top: 3.sp),
                child: Container(
                  height: 60.sp,
                  width: 320.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                        color: royalIntrigue,
                        width: 0.5.sp,
                        style: BorderStyle.solid),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.sp, top: 5.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DoctorHuntText.name2,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: greenTeal,
                          ),
                        ),
                        SizedBox(height: 5.sp),
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: true,
                            hintText: DoctorHuntText.fullName,
                            hintStyle: TextStyle(
                              color: royalIntrigue,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.sp),

              // Second Textfield
              Padding(
                padding: EdgeInsets.only(left: 20.sp, top: 3.sp),
                child: Container(
                  height: 60.sp,
                  width: 320.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                        color: royalIntrigue,
                        width: 0.5.sp,
                        style: BorderStyle.solid),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.sp, top: 5.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DoctorHuntText.contactNumber,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: greenTeal,
                          ),
                        ),
                        SizedBox(height: 5.sp),
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: true,
                            hintText: DoctorHuntText.internationalNumber,
                            hintStyle: TextStyle(
                              color: royalIntrigue,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                            ),
                            // suffixIcon: Image.asset("assets/images/edit.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10.sp,
              ),

              // Third Textfield
              Padding(
                padding: EdgeInsets.only(left: 20.sp, top: 3.sp),
                child: Container(
                  height: 60.sp,
                  width: 320.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                        color: royalIntrigue,
                        width: 0.5.sp,
                        style: BorderStyle.solid),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.sp, top: 5.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DoctorHuntText.dateOfBirth,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: greenTeal,
                          ),
                        ),
                        SizedBox(height: 5.sp),
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: true,
                            hintText: DoctorHuntText.dateOrder,
                            hintStyle: TextStyle(
                              color: royalIntrigue,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                            ),
                            // suffixIcon: Image.asset("assets/images/edit.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.sp),

              // Fourth Textfield
              Padding(
                padding: EdgeInsets.only(left: 20.sp, top: 3.sp),
                child: Container(
                  height: 60.sp,
                  width: 320.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                        color: royalIntrigue,
                        width: 0.5.sp,
                        style: BorderStyle.solid),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.sp, top: 5.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DoctorHuntText.location2,
                          style: TextStyle(
                            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: greenTeal,
                          ),
                        ),
                        SizedBox(height: 5.sp),
                        TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: true,
                            hintText: DoctorHuntText.addDetails,
                            hintStyle: TextStyle(
                              color: royalIntrigue,
                              fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.sp),

              // Button
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

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        height: 30.sp,
        width: 30.sp,
        decoration: BoxDecoration(
            color: whiteText, borderRadius: BorderRadius.circular(10.r)),
        child: GestureDetector(
          onTap: onTap,
          child: Icon(Icons.keyboard_arrow_left, color: royalIntrigue),
        ),
      ),

      SizedBox(width: 20.sp),

      // Text
      Text(
        DoctorHuntText.profile,
        style: TextStyle(
            fontSize: 19.sp,
            fontWeight: FontWeight.w600,
            fontFamily: DoctorHuntAssetsPath.doctorHuntFont,
            color: whiteText),
      ),
    ]);
  }
}
